import 'package:flutter/material.dart';
import 'package:heart_pick/platform/localization/app_localizations.dart';
import 'package:heart_pick/presentation/utils/colors.dart';

void showErrorSnackBar(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(AppLocalizations.of(context).somethingWentWrong),
      elevation: 0,
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 12,
      ),
      backgroundColor: AppColors.black,
      duration: const Duration(seconds: 3),
      dismissDirection: DismissDirection.down,
    ),
  );
}
