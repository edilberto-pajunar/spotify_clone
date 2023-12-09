import 'package:flutter/material.dart';

class StackPicCard extends StatelessWidget {
  const StackPicCard({
    required this.color,
    super.key,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Container(
      height: 102,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        color: color,
      ),
      child: ClipRect(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "<Suggestion>",
                style: theme.textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Positioned(
              right: -20,
              bottom: 5,
              child: Transform.rotate(
                angle: -20,
                child: Container(
                  height: 66.0,
                  width: 66.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(2.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
