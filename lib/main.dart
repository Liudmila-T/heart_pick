import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:heart_pick/platform/localization/app_localizations.dart';
import 'package:heart_pick/platform/localization/app_localizations_delegate.dart';
import 'package:heart_pick/presentation/routes.dart';
import 'package:heart_pick/presentation/utils/colors.dart';

import 'data/datasourse/remote/rest_api.dart';
import 'data/network_client.dart';
import 'data/repositories/app_repository_impl.dart';
import 'domain/repositories/app_repository.dart';

final locator = GetIt.instance;

Future<void> _setUp() async {
  locator.registerSingleton<NetworkClient>(NetworkClient());
  locator.registerSingleton<RestApi>(RestApiImpl(networkClient: locator.get<NetworkClient>()));
  locator.registerSingleton<AppRepository>(AppRepositoryImpl(restApi: locator.get<RestApi>()));
}

void main() async {
  await runZonedGuarded(
    () async {
      await _setUp();

      runApp(const MyApp());
    },
    (dynamic object, StackTrace stackTrace) {},
  );
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
