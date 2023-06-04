import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/search/search_bloc.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/search/widgets/search_title.dart';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Searchtile(
          title: 'Movies & Tv',
        ),
        kheight,
        Expanded(child: BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) {
            return GridView.count(
              shrinkWrap: true,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
              crossAxisCount: 3,
              childAspectRatio: 1 / 1.4,
              children: List.generate(
                20,
                (index) {
                  final movie = state.searchResultList[index];
                  return MainCard(
                    imageurl: movie.posterImageUrl,
                  );
                },
              ),
            );
          },
        ))
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  final String imageurl;
  const MainCard({super.key, required this.imageurl});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image:
            DecorationImage(image: NetworkImage(imageurl), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(7),
      ),
    );
  }
}
