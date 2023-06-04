import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widgets/custom_button_widget.dart';
import 'package:netflix/presentation/widgets/video_widget.dart';

class EveryoneWatchingWidget extends StatelessWidget {
  final String posterPath;
  final String mpvieName;
  final String description;

  const EveryoneWatchingWidget({super.key, required this.posterPath, required this.mpvieName, required this.description});
 

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kheight,
        Text(mpvieName,
            style:const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        kheight,
        Text(
         description,
         maxLines:4,
         overflow: TextOverflow.ellipsis,
          style:const TextStyle(color: kgrey),
        ),
        kheight50,
        Videowidget(url: posterPath,),
      const  Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Customiconwidget(
              icon: Icons.share,
              title: "Share",
              iconSize: 25,
              textSize: 16,
            ),
            kwidth,
            Customiconwidget(
              icon: Icons.add,
              title: "My List",
              iconSize: 25,
              textSize: 16,
            ),
            kwidth,
            Customiconwidget(
              icon: Icons.play_arrow,
              title: "Play",
              iconSize: 25,
              textSize: 16,
            ),
            kwidth,
          ],
        )
      ],
    );
  }
}
