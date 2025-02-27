import 'package:flutter/material.dart';

import 'colors.dart';

class AppShadows {
  AppShadows._();

  static final boxShadow =
      BoxShadow(color: AppColors.black.withOpacity(0.25), offset: const Offset(0, 4), blurRadius: 0, spreadRadius: 0);
  static final textShadow =
      BoxShadow(color: AppColors.black.withOpacity(0.25), offset: const Offset(0, 2), blurRadius: 0, spreadRadius: 0);
}
