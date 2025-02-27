import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:heart_pick/presentation/utils/assets.dart';
import 'package:heart_pick/presentation/utils/text_styles.dart';
import 'package:heart_pick/presentation/widgets/text_widget.dart';

import '../utils/colors.dart';

class StepCounterWidget extends StatelessWidget {
  const StepCounterWidget({super.key, required this.currentStep, required this.totalSteps, this.isFinish = false});

  final int currentStep;
  final int totalSteps;
  final bool isFinish;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextWidget(
            text: '$totalSteps / ',
            textStyles: TextStyles.title18.apply(color: isFinish ? AppColors.white : AppColors.lightPurpleText)),
        TextWidget(text: '$currentStep', textStyles: TextStyles.title18.copyWith(color: AppColors.white)),
        const SizedBox(
          width: 10.0,
        ),
        SvgPicture.asset(AppIcons.activeCoin)
      ],
    );
  }
}
