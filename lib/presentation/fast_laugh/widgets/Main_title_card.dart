import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/widgets/main_title.dart';

import 'main_card.dart';

class MainTtileCard extends StatelessWidget {
  const MainTtileCard({
    super.key,
    required this.title,
    required this.posterList,
  });
  final String title;
  final List<String> posterList;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MianTitle(title: title),
        kheight,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(
                posterList.length, 
                (index) =>  MainCard(imageUrl: posterList[index],))),
        )
      ],
    );
  }
}
