import 'package:go_router/go_router.dart';
import 'package:spotify_clone/presentation/screens/home.dart';
import 'package:spotify_clone/presentation/screens/library.dart';
import 'package:spotify_clone/presentation/screens/navigation_bar.dart';
import 'package:spotify_clone/presentation/screens/search.dart';

class AppRouter {
  static GoRouter router = GoRouter(
    initialLocation: HomeScreen.route,
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return NavigationBarScreen(
            navigationShell: navigationShell,
          );
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: HomeScreen.route,
                builder: (context, state) => const HomeScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: SearchScreen.route,
                builder: (context, state) => const SearchScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: LibraryScreen.route,
                builder: (context, state) => const LibraryScreen(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
