import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widgets/custom_button_widget.dart';
import 'package:netflix/presentation/widgets/video_widget.dart';

class CoimgSoonwidget extends StatelessWidget {
  final String id;
  final String month;
  final String day;
  final String posterPath;
  final String mpvieName;
  final String description;

  const CoimgSoonwidget({super.key, required this.id, required this.month,required this.day, required this.posterPath, required this.mpvieName, required this.description});
  

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Row(
      children: [
         SizedBox(
          width: 50,
          height: 450,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(month,
               style:const TextStyle(fontSize: 18, color: kgrey)),
              Text(
                day,
                style:const TextStyle(
                    fontSize: 30,
                    letterSpacing: 4,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 450,
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Videowidget(url: posterPath,),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      mpvieName,
                      maxLines: 1,
                      overflow: TextOverflow.clip,
                      style:const TextStyle(
                        
                          fontSize: 18,
                         // letterSpacing: -5,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                 
                const  Customiconwidget(
                        icon: Icons.all_out_sharp,
                        title: "Remain me",
                        iconSize: 20,
                        textSize: 12,
                      ),
                      kwidth,
                    const  Customiconwidget(
                        icon: Icons.info,
                        title: "info",
                        iconSize: 20,
                        textSize: 12,
                      ),
                ],
              ),
              kheight,
              Text("Coming on $day $month"),
              kheight,
              Text(mpvieName,
              maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  style:const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              kheight,
              Text(
                  description,
                  maxLines: 4,
                  style:const TextStyle(color: kgrey))
            ],
          ),
        ),
      ],
    );
  }
}
