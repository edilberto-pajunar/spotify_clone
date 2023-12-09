import 'package:flutter/material.dart';
import 'package:spotify_clone/core/strings/theme.dart';
import 'package:spotify_clone/routes/route.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "Spotify Clone",
      routerConfig: AppRouter.router,
      theme: AppTheme().theme,
    );
  }
}
