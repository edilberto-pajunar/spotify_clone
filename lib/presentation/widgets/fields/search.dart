import 'package:flutter/material.dart';
import 'package:spotify_clone/core/strings/color.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    required this.controller,
    super.key,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: TextField(
            controller: controller,
            style: theme.textTheme.bodyLarge!.copyWith(
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.search),
              fillColor: Colors.white,
              filled: true,
              focusColor: Colors.white,
              hintText: "Artists, songs, or podcasts",
              hintStyle: theme.textTheme.bodyLarge!.copyWith(
                color: ColorTheme.textBlack,
                fontWeight: FontWeight.w600,
              ),
              contentPadding: const EdgeInsets.symmetric(
                vertical: 13.0,
                horizontal: 28.0,
              ),
              border: const OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        const SizedBox(width: 43.0),
        const Icon(
          Icons.mic_none_sharp,
          color: Colors.white,
        ),
      ],
    );
  }
}
