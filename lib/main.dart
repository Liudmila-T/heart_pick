import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heart_pick/platform/localization/app_localizations.dart';
import 'package:heart_pick/platform/localization/app_localizations_delegate.dart';
import 'package:heart_pick/presentation/routes.dart';
import 'package:heart_pick/presentation/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return WidgetsApp(
        debugShowCheckedModeBanner: false,
        color: AppColors.white,
        builder: (context, child) {
          return ScreenUtilInit(
            useInheritedMediaQuery: true,
            builder: (ctx, child) => MaterialApp(
              debugShowCheckedModeBanner: false,
              initialRoute: Routes.start,
              supportedLocales: AppLocalizations.supportedLocales,
              locale: AppLocalizations.supportedLocales.first,
              localizationsDelegates: const [
                AppLocalizationsDelegate(),
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              onGenerateRoute: (settings) => Routes.onGenerateRoute(context, settings),
            ),
          );
        });
  }
}
