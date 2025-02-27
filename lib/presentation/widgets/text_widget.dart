import 'package:flutter/material.dart';
import 'package:heart_pick/presentation/utils/shadows.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key, required this.text, required this.textStyles, this.withShadow = true});

  final String text;
  final TextStyle textStyles;
  final bool withShadow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      maxLines: 4,
      textAlign: TextAlign.center,
      style: textStyles.copyWith(
          shadows: withShadow
              ? [
                  AppShadows.textShadow,
                ]
              : null),
    );
  }
}
