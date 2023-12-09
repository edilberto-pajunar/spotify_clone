import 'package:flutter/material.dart';
import 'package:spotify_clone/presentation/widgets/cards/stack_pic.dart';
import 'package:spotify_clone/presentation/widgets/fields/search.dart';

class SearchScreen extends StatefulWidget {
  static String route = "/search";
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController search = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    search.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: size.height,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black54,
                Color(0xFF020202),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [
                0.1,
                0.2,
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "Search",
                      style: theme.textTheme.headlineLarge,
                    ),
                  ),
                  SearchField(
                    controller: search,
                  ),
                  const SizedBox(height: 16.0),
                  Text(
                    "Your top genres",
                    style: theme.textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  const Row(
                    children: [
                      Expanded(
                        child: StackPicCard(
                          color: Color(0xFF4300FF),
                        ),
                      ),
                      SizedBox(width: 16.0),
                      Expanded(
                        child: StackPicCard(
                          color: Color(0xFFFFB13B),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24.0),
                  Text(
                    "Popular podcast categories",
                    style: theme.textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  const Row(
                    children: [
                      Expanded(
                        child: StackPicCard(
                          color: Color(0xFF4300FF),
                        ),
                      ),
                      SizedBox(width: 16.0),
                      Expanded(
                        child: StackPicCard(
                          color: Color(0xFFFFB13B),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24.0),
                  Text(
                    "Browse all",
                    style: theme.textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  const Row(
                    children: [
                      Expanded(
                        child: StackPicCard(
                          color: Color(0xFF4300FF),
                        ),
                      ),
                      SizedBox(width: 16.0),
                      Expanded(
                        child: StackPicCard(
                          color: Color(0xFFFFB13B),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24.0),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
