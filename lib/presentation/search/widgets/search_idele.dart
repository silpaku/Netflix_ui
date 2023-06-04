import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/search/search_bloc.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/search/widgets/search_title.dart';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Searchtile(title: 'Top Searches'),
        kheight,
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state.isError) {
                return const Center(
                  child: Text('Error while getting data'),
                );
              } else if (state.idleList.isEmpty) {
                return const Center(
                  child: Text('List is empty'),
                );
              }
              return ListView.separated(
                shrinkWrap: true,
                itemBuilder: (ctx, index) {
                  final movie = state.idleList[index];
                  return TopsearchItem(
                      title: movie.title ?? 'No title provided',
                      imageUrl: '$imageAppendUrl${movie.posterPath}');
                },
                separatorBuilder: (ctx, index) => fheight,
                itemCount: state.idleList.length,
              );
            },
          ),
        )
      ],
    );
  }
}

class TopsearchItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  const TopsearchItem({super.key, required this.title, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenwidth * 0.35,
          height: 65,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(imageUrl))),
        ),
       const SizedBox(
          width: 5,
        ),
        Expanded(
            child: Text(
          title,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
        )),
        const CircleAvatar(
          backgroundColor: kwhiteColor,
          radius: 25,
          child: CircleAvatar(
            backgroundColor: kblack,
            radius: 23,
            child: Icon(
              CupertinoIcons.play_fill,
              color: kwhiteColor,
            ),
          ),
        )
      ],
    );
  }
}
