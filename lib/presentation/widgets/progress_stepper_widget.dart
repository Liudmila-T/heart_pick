import 'package:flutter/material.dart';
import 'package:heart_pick/presentation/utils/colors.dart';
import 'package:heart_pick/presentation/utils/shadows.dart';

class ProgressStepperWidget extends StatelessWidget {
  final int currentStep;
  final int totalSteps;

  const ProgressStepperWidget({
    super.key,
    required this.currentStep,
    required this.totalSteps,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(totalSteps, (index) {
        bool isActive = index < currentStep;
        return isActive
            ? const _ActiveProgressStepperItem()
            : Container(
                height: 6.0,
                width: 24.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2.0),
                  border: Border.all(
                    width: 2.0,
                    color: AppColors.lightPurpleButtonBackground,
                    strokeAlign: BorderSide.strokeAlignOutside,
                  ),
                ),
              );
      }),
    );
  }
}

class _ActiveProgressStepperItem extends StatelessWidget {
  const _ActiveProgressStepperItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10.0,
      width: 28.0,
      padding: const EdgeInsets.all(2.0),
      decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [AppColors.braunStepperBorderFirst, AppColors.braunStepperBorderSecond],
            stops: [0.0, 1.0],
          ),
          borderRadius: BorderRadius.circular(2),
          boxShadow: [AppShadows.boxShadow]),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2.0),
          gradient: const LinearGradient(
            colors: [AppColors.yellowStepperFirst, AppColors.yellowStepperSecond],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
      ),
    );
  }
}
