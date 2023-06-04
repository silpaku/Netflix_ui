import 'package:flutter/material.dart';

class MianTitle extends StatelessWidget {
  const MianTitle({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style:const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
    );
  }
}
