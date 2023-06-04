import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';

class Videowidget extends StatelessWidget {
  final String url;
  const Videowidget({
    super.key,
  required  this.url,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: Image.network(
            url,
            fit: BoxFit.cover,
            loadingBuilder:(BuildContext _,Widget child,ImageChunkEvent? progress){
               if(progress == null){
                return child;
               }else{
                return  const Center(child:CircularProgressIndicator(strokeWidth: 2,));
               }
            } ,
            errorBuilder: (BuildContext _, Object, StackTrace? trace) {
              return const Center(child: Icon(Icons.wifi));
            },
          ),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: CircleAvatar(
            radius: 22,
            backgroundColor: Colors.black.withOpacity(0.5),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.volume_off,
                  color: kwhiteColor,
                  size: 20,
                )),
          ),
        ),
      ],
    );
  }
}
