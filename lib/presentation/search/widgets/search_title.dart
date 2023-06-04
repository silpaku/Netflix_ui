import 'package:flutter/cupertino.dart';

class Searchtile extends StatelessWidget {
  final String title;

  const Searchtile({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style:const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
    );
  }
}
