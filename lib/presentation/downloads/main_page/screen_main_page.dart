import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/presentation/downloads/screen_downloads.dart';
import 'package:netflix/presentation/downloads/widgets/bottom_nav.dart';
import 'package:netflix/presentation/fast_laugh/Screen_fast_laugh.dart';
import 'package:netflix/presentation/home/screen_home.dart';
import 'package:netflix/presentation/new_and_hot/screen_new_and_hot.dart';
import 'package:netflix/presentation/search/Screen_seach.dart';

class ScreenMainpage extends StatelessWidget {
  ScreenMainpage({super.key});
  final pages = [
    const ScreenHome(),
    const ScreenNewHot(),
    const ScreenFastLaugh(),
    ScreenSearch(),
    ScreenDownloads(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, index, _) {
            return pages[index];
          },
        ),
      ),
      bottomNavigationBar: const Bottomnav(),
    );
  }
}
