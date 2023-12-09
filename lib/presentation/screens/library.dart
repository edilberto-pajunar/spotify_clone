import 'package:flutter/material.dart';

class LibraryScreen extends StatefulWidget {
  static String route = "/library";
  const LibraryScreen({super.key});

  @override
  State<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: TabBar(
          controller: controller,
          tabs: const [
            Tab(
              text: "Music",
            ),
            Tab(
              text: "Podcasts",
            ),
          ],
        ),
      ),
    );
  }
}
