import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:heart_pick/presentation/utils/assets.dart';
import 'package:heart_pick/presentation/utils/colors.dart';
import 'package:heart_pick/presentation/utils/text_styles.dart';

import '../../utils/shadows.dart';

class StartGameButtonWidget extends StatelessWidget {
  const StartGameButtonWidget({super.key, required this.onTap, required this.title, this.withIcon = false});

  final VoidCallback onTap;
  final String title;
  final bool withIcon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60.0,
        padding: const EdgeInsets.symmetric(
          horizontal: 36.0,
          vertical: 2.0,
        ),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(999.0)),
            color: AppColors.yellow,
            boxShadow: [AppShadows.boxShadow]),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (withIcon) SvgPicture.asset(AppIcons.defaultCoin),
            if (withIcon)
              const SizedBox(
                width: 8.0,
              ),
            Text(
              title,
              style: withIcon
                  ? TextStyles.title18.apply(color: AppColors.blackText)
                  : TextStyles.title30.apply(color: AppColors.blackText),
            ),
          ],
        ),
      ),
    );
  }
}
