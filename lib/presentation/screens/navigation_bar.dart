import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spotify_clone/core/strings/color.dart';

class NavigationBarScreen extends StatelessWidget {
  static String route = "/";
  NavigationBarScreen({
    required this.navigationShell,
    super.key,
  });

  final StatefulNavigationShell navigationShell;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  void onTap(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: ColorTheme.matteBlack,
        unselectedItemColor: ColorTheme.greyColor,
        selectedItemColor: Colors.white,
        selectedLabelStyle: const TextStyle(
          fontSize: 10.0,
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 8.0,
        ),
        currentIndex: navigationShell.currentIndex,
        onTap: onTap,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.library_music_rounded), label: "Library"),
        ],
      ),
      body: navigationShell,
    );
  }
}
