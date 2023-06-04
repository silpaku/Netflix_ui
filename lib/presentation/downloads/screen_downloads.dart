import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/downlods/downlods_bloc.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/widgets/app_bar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});

  final _widgetList = [
    const _SmartDownloads(),
    Section2(),
    const Section3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: AppBarWidget(
              title: "Downloads",
            )),
        body: ListView.separated(
            padding: const EdgeInsets.all(10),
            itemBuilder: (ctx, index) => _widgetList[index],
            separatorBuilder: (ctx, index) => const SizedBox(
                  height: 20,
                ),
            itemCount: _widgetList.length));
  }
}

class Section2 extends StatelessWidget {
  Section2({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      BlocProvider.of<DownlodsBloc>(context)
          .add(const DownlodsEvent.getDownloadsImages());
    });
    // BlocProvider.of<DownlodsBloc>(context).add(const DownlodsEvent.getDownloadsImages());

    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          "Introducing Downloads for you",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: kwhiteColor, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        kheight,
        const Text(
          'We Will download a personalized selection of\n movies and shows for you,so there is \nalways something to watch on your \ndevice ',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        kheight,
        BlocBuilder<DownlodsBloc, DownlodsState>(
          builder: (context, state) {
            return SizedBox(
              width: size.width,
              height: size.width,
              child: state.isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : Stack(alignment: Alignment.center, children: [
                      Center(
                          child: CircleAvatar(
                        backgroundColor: Colors.grey.withOpacity(0.5),
                        radius: size.width * 0.4,
                      )),
                      DownloadsImageWidget(
                        imageList:
                            '$imageAppendUrl${state.downlods![0].posterPath}',
                        margin: const EdgeInsets.only(left: 170, top: 50),
                        angle: 25,
                        size: Size(size.width * 0.35, size.width * 0.55),
                      ),
                      DownloadsImageWidget(
                        imageList:
                            '$imageAppendUrl${state.downlods![1].posterPath}',
                        margin: const EdgeInsets.only(right: 170, top: 50),
                        angle: -20,
                        size: Size(size.width * 0.35, size.width * 0.55),
                      ),
                      DownloadsImageWidget(
                        imageList:
                            '$imageAppendUrl${state.downlods![2].posterPath}',
                        radius: 8,
                        margin: const EdgeInsets.only(bottom: 35, top: 50),
                        size: Size(size.width * 0.4, size.width * 0.6),
                      )
                    ]),
            );
          },
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            color: kbuttoncolor,
            onPressed: () {},
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Setup",
                style: TextStyle(
                    color: kwhiteColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        kheight,
        MaterialButton(
          color: kbuttoncolorwhite,
          onPressed: () {},
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              "See what you can download",
              style: TextStyle(
                  color: kblack, fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.settings,
          color: kwhiteColor,
        ),
        kwidth,
        Text("Smart Downloads")
      ],
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget(
      {super.key,
      required this.imageList,
      this.angle = 0,
      required this.margin,
      required this.size,
      this.radius = 10});

  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  final double radius;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Transform.rotate(
        angle: angle * pi / 180,
        child: ClipRect(
          child: Container(
            // margin: margin,
            width: size.width,
            height: size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(radius),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      imageList,
                    ))),
          ),
        ),
      ),
    );
  }
}
