import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:heart_pick/platform/localization/app_localizations.dart';
import 'package:heart_pick/presentation/utils/assets.dart';
import 'package:heart_pick/presentation/utils/shadows.dart';
import 'package:heart_pick/presentation/utils/text_styles.dart';

import '../../utils/colors.dart';

enum ActionButtonType { nextStep, or, close }

class ActionButtonWidget extends StatelessWidget {
  const ActionButtonWidget({
    super.key,
    this.onTap,
    required this.actionButtonType,
  });

  final VoidCallback? onTap;
  final ActionButtonType actionButtonType;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: _height,
        padding: EdgeInsets.symmetric(
          horizontal: _horizontalPadding,
          vertical: 8.0,
        ),
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.white, width: 3.0),
            borderRadius: const BorderRadius.all(Radius.circular(999.0)),
            color: AppColors.lightPurpleButtonBackground,
            boxShadow: [AppShadows.boxShadow]),
        child: actionButtonType == ActionButtonType.close
            ? SvgPicture.asset(
                AppIcons.closeIcon,
                width: 18.0,
                height: 18.0,
              )
            : Text(
                _title(context),
                style: _style.apply(color: AppColors.white),
              ),
      ),
    );
  }

  double get _horizontalPadding {
    switch (actionButtonType) {
      case ActionButtonType.nextStep:
        return 46.0;
      case ActionButtonType.or:
        return 5.0;
      case ActionButtonType.close:
        return 14.0;
    }
  }

  double get _height {
    switch (actionButtonType) {
      case ActionButtonType.nextStep:
        return 60.0;
      case ActionButtonType.or:
        return 60.0;
      case ActionButtonType.close:
        return 50.0;
    }
  }

  String _title(BuildContext context) {
    switch (actionButtonType) {
      case ActionButtonType.nextStep:
        return AppLocalizations.of(context).next;
      case ActionButtonType.or:
        return AppLocalizations.of(context).or;
      case ActionButtonType.close:
        return AppLocalizations.of(context).close;
    }
  }

  TextStyle get _style {
    switch (actionButtonType) {
      case ActionButtonType.nextStep:
        return TextStyles.title30;
      case ActionButtonType.or:
        return TextStyles.title18;
      case ActionButtonType.close:
        return TextStyles.title18;
    }
  }
}
