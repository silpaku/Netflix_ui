import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/home/home_bloc.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widgets/background_card.dart';
import '../downloads/widgets/number_title.dart';
import '../fast_laugh/widgets/Main_title_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HomeBloc>(context).add(const GetHomeScreenData());
    });
    return Scaffold(
        body: ValueListenableBuilder(
            valueListenable: scrollNotifier,
            builder: (BuildContext context, index, _) {
              return NotificationListener<UserScrollNotification>(
                onNotification: (notification) {
                  final ScrollDirection direction = notification.direction;
                  print(direction);
                  if (direction == ScrollDirection.reverse) {
                    scrollNotifier.value = false;
                  } else if (direction == ScrollDirection.forward) {
                    scrollNotifier.value = true;
                  }
                  return true;
                },
                child: Stack(
                  children: [
                    BlocBuilder<HomeBloc, HomeState>(
                      builder: (context, state) {
                          if(state.isLoading){
                            return const Center(child:CircularProgressIndicator(strokeWidth: 2,) ,);
                          }else if(state.hasError){
                            return  const Center(child:  Text('Error while getting data',style: TextStyle(color: Colors.white),));
                          }
                          final releasedPastYear=state.pastYearMovieList.map((m){
                               return '$imageAppendUrl${m.posterPath}';
                          }).toList();
                          releasedPastYear.shuffle();
                          //trending
                          final trending=state.trendingMovieList.map((m){
                               return '$imageAppendUrl${m.posterPath}';
                          }).toList();
                          trending.shuffle();
                          //tense
                          final tense=state.tenseDramaMovieList.map((m){
                               return '$imageAppendUrl${m.posterPath}';
                          }).toList();
                          //south
                          final south=state.southIndianMovieList.map((m){
                               return '$imageAppendUrl${m.posterPath}';
                          }).toList();
                          south.shuffle();
                          //tvshows top10
                          final top10TvShow=state.trendingTvList.map((t){
                            return '$imageAppendUrl${t.posterPath}';
                          }).toList();
                          top10TvShow.shuffle;

                          //listview
                        return ListView(
                          children:  [
                            BackgroundCard(),
                            if(releasedPastYear.length>= 10)
                            MainTtileCard(
                              title: "Released in the past year",
                              posterList: releasedPastYear.sublist(0, 10),
                            ),
                            kheight,
                             if(trending.length>= 10)
                            MainTtileCard(
                              title: "Trending Now",
                              posterList: trending.sublist(0, 10),
                            ),
                            kheight,
                            NumberTitleCard(
                                 postersList:top10TvShow.sublist(0, 5),
                            ),
                            kheight,
                             if(tense.length>= 10)
                            MainTtileCard(
                              title: " Tense Dramas",
                              posterList:tense.sublist(0, 10),
                            ),
                            kheight,
                             if(south.length>= 10)
                            MainTtileCard(
                              title: "South Indain Cinemas",
                              posterList:south.sublist(0, 10),
                            )
                          ],
                        );
                      },
                    ),
                    scrollNotifier.value == true
                        ? AnimatedContainer(
                            duration: const Duration(microseconds: 1000),
                            width: double.infinity,
                            height: 90,
                            color: Colors.black.withOpacity(0.3),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Image.network(
                                      'https://upload.wikimedia.org/wikipedia/commons/f/ff/Netflix-new-icon.png',
                                      width: 60,
                                      height: 60,
                                    ),
                                    const Spacer(),
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
                                    kwidth
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'Tv Shows',
                                      style: kHomeTitleText,
                                    ),
                                    Text(
                                      'Movies',
                                      style: kHomeTitleText,
                                    ),
                                    Text(
                                      'Categories',
                                      style: kHomeTitleText,
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        : kheight,
                  ],
                ),
              );
            }));
  }
}
