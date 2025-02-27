import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:heart_pick/presentation/utils/assets.dart';
import 'package:heart_pick/presentation/utils/colors.dart';
import 'package:heart_pick/presentation/utils/shadows.dart';
import 'package:heart_pick/presentation/utils/text_styles.dart';
import 'package:heart_pick/presentation/widgets/text_widget.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget(
      {super.key, required this.imageUrl, required this.title, required this.onTap, required this.isLiked});

  final String imageUrl;
  final String title;
  final VoidCallback onTap;
  final bool isLiked;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      width: MediaQuery.sizeOf(context).width * 0.43,
      height: MediaQuery.sizeOf(context).height * 0.38,
      padding: const EdgeInsets.symmetric(horizontal: 2.0, vertical: 4.0),
      decoration: BoxDecoration(
          color: AppColors.greyBackground,
          borderRadius: const BorderRadius.all(
            Radius.circular(16.0),
          ),
          boxShadow: [AppShadows.boxShadow]),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
        decoration: const BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(16.0),
          ),
        ),
        child: Column(
          children: [
            Expanded(flex: 4, child: Image.network(imageUrl)),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(top: 16.0, left: 8.0, right: 8.0),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: TextWidget(
                    text: title,
                    withShadow: false,
                    textStyles: TextStyles.body14.apply(
                      color: AppColors.greyText,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: SvgPicture.asset(
                isLiked ? AppIcons.activeLike : AppIcons.defaultLike,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
