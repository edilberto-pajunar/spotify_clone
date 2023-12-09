import 'package:flutter/material.dart';
import 'package:spotify_clone/core/strings/color.dart';
import 'package:spotify_clone/core/strings/image.dart';
import 'package:spotify_clone/data/models/music.dart';

class HomeScreen extends StatelessWidget {
  static String route = "/";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData theme = Theme.of(context);
    final List<Music> musicList = [
      Music(name: "Machine Gun Kelly", image: PngImages.machineGun),
      Music(name: "Greta Van Fleet", image: PngImages.gretaVan),
      Music(name: "Machine Gun Kelly", image: PngImages.machineGun),
      Music(name: "Greta Van Fleet", image: PngImages.gretaVan),
      Music(name: "Machine Gun Kelly", image: PngImages.machineGun),
      Music(name: "Greta Van Fleet", image: PngImages.gretaVan),
    ];

    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                ColorTheme.lightBrownColor,
                const Color(0xFF020202),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: const [
                0.1,
                0.2,
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.settings,
                      ),
                    ),
                  ),
                  Text(
                    "Good evening",
                    style: theme.textTheme.titleSmall,
                  ),
                  Wrap(
                    runSpacing: 8.0,
                    spacing: 8.0,
                    children: musicList.map((Music music) {
                      return Container(
                        width: 176,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          gradient: LinearGradient(
                            colors: [
                              ColorTheme.lightColor,
                              const Color(0xFF5F5F5F).withOpacity(0.5),
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                        child: Row(
                          children: [
                            Image.asset(music.image),
                            const SizedBox(width: 8.0),
                            Expanded(
                              child: Text(
                                music.name,
                                style: theme.textTheme.bodyMedium!.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                  const SizedBox(height: 40.0),
                  Text(
                    "Recently Played",
                    style: theme.textTheme.titleSmall,
                  ),
                  const SizedBox(height: 16.0),
                  SizedBox(
                    height: 150,
                    child: ListView.builder(
                      itemCount: musicList.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.symmetric(horizontal: 8.0),
                          width: 100,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                height: 100,
                                PngImages.gretaVan,
                                fit: BoxFit.cover,
                              ),
                              const SizedBox(height: 8.0),
                              const Expanded(
                                child: Text(
                                  "Dance Gavin Dance",
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 24.0),
                  Text(
                    "New Releases for you",
                    style: theme.textTheme.titleSmall,
                  ),
                  const SizedBox(height: 16.0),
                  SizedBox(
                    height: 190,
                    child: ListView.builder(
                      itemCount: musicList.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.symmetric(horizontal: 8.0),
                          width: 110,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                height: 100,
                                PngImages.gretaVan,
                                fit: BoxFit.cover,
                              ),
                              const SizedBox(height: 8.0),
                              Text(
                                "Dance Gavin Dance",
                                style: theme.textTheme.labelLarge!.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "Dance Gavin Dance",
                                style: theme.textTheme.labelLarge,
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
