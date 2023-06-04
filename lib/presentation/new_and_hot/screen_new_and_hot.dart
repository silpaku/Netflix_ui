import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:netflix/application/hot_and_new/hot_and_new_bloc.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/new_and_hot/widgets/coming_soonwidget.dart';
import 'widgets/everyone_watchwidget.dart';

class ScreenNewHot extends StatelessWidget {
  const ScreenNewHot({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_){
        BlocProvider.of<HotAndNewBloc>(context).add(const LoadDataInComingSoon());
    });
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(90),
          child: AppBar(
            title: const Text(
              "New & hot",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            actions: [
              const Icon(
                Icons.cast,
                color: Colors.white,
                size: 30,
              ),
              kwidth,
              Container(
                width: 30,
                height: 30,
                color: Colors.blue,
              ),
              kwidth,
            ],
            bottom: TabBar(
                labelColor: kblack,
                unselectedLabelColor: kwhiteColor,
                isScrollable: true,
                labelStyle:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                indicator:
                    BoxDecoration(color: kwhiteColor, borderRadius: kradiu30),
                tabs: [
                  const Tab(
                    text: '🍟 Coming Soon',
                  ),
                  const Tab(
                    text: "👀 Everyone's Watching",
                  )
                ]),
          ),
        ),
        body:const TabBarView(children: [
          ComingSoonList(key:Key ('Coiming_soon'),),
          EveryOneIsWatchingList(key: Key('everyone_is_watching'),),
        ]),
      ),
    );
  }
}

class ComingSoonList extends StatelessWidget {
  const ComingSoonList({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_){
      BlocProvider.of<HotAndNewBloc>(context).add(const LoadDataInComingSoon() );
    });
    return RefreshIndicator(
      onRefresh: () async{
    BlocProvider.of<HotAndNewBloc>(context).add(const LoadDataInComingSoon() );

      },
      child: BlocBuilder<HotAndNewBloc, HotAndNewState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(
                strokeWidth: 2,
              ),
            );
          } else if (state.hasError) {
            return const Center(
              child: Text('Error While loading coming soon'),
            );
          } else if (state.comingSoonList.isEmpty) {
            return const Center(
              child: Text('Coming soon list is empty'),
            );
          } else {
            return ListView.builder(
              padding:const EdgeInsets.only(top: 20),
                itemCount: state.comingSoonList.length,
                itemBuilder: (BuildContext context, index) {
                  final movie = state.comingSoonList[index];
                 if(movie.id ==null){
                  return const SizedBox();
                 }
                //  print(movie.releaseDate);
                String month='';
                String date='';
                try{
                  final _date=DateTime.tryParse(movie.releaseDate!);
                  final formatedDate=
                   DateFormat.yMMMMd('en_US').format(_date!);
                   month=formatedDate
                      .split(' ')
                      .first
                      .substring(0, 3)
                      .toUpperCase();
    
                      date=movie.releaseDate!.split('_')[1];
                }catch(_){
                  month='';
                  date='';
                }
                //  final _date=DateTime.parse(movie.releaseDate!);
                //  final formatedDate= DateFormat.yMMMMd('en_US').format(_date);
                  return CoimgSoonwidget(
                      id: movie.id.toString(),
                      month:month ,//formatedDate
                      // .split('  ')
                      // .first
                      // .substring(0,  3)
                      // .toUpperCase(),
                      day:date, //movie.releaseDate!.split('_')[1],
                      posterPath:'$imageAppendUrl${movie.posterPath}',
                      mpvieName: movie.originalTitle??'No Title',
                      description: movie.overview??'No description');
                });
          }
        },
      ),
    );
  }
}


class EveryOneIsWatchingList extends StatelessWidget {
  const EveryOneIsWatchingList({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_){
      BlocProvider.of<HotAndNewBloc>(context).add(const LoadDataInEveryOneIsWatching() );
    });
    return RefreshIndicator(
      onRefresh: () async{
    BlocProvider.of<HotAndNewBloc>(context).add(const LoadDataInEveryOneIsWatching() );

      },
      child: BlocBuilder<HotAndNewBloc, HotAndNewState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(
                strokeWidth: 2,
              ),
            );
          } else if (state.hasError) {
            return const Center(
              child: Text('Error While loading coming soon'),
            );
          } else if (state.everyOneIsWatchingList.isEmpty) {
            return const Center(
              child: Text('Coming soon list is empty'),
            );
          } else {
            return ListView.builder(
              padding:const EdgeInsets.all(20) ,
                itemCount: state.everyOneIsWatchingList.length,
                itemBuilder: (BuildContext context, index) {
                  final movie = state.everyOneIsWatchingList[index];
                 if(movie.id ==null){
                  return const SizedBox();
                 }
                //  final _date=DateTime.parse(movie.releaseDate!);
                //  final formatedDate= DateFormat.yMMMMd('en_US').format(_date);
    
                final tv =state.everyOneIsWatchingList[index];
                  return EveryoneWatchingWidget(
                  posterPath: '$imageAppendUrl${tv.posterPath}', 
                  mpvieName: tv.originalName??'No name provided', 
                  description: tv.overview?? 'No description');
                });
          }
        },
      ),
    );
  }
}
