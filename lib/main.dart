import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:heart_pick/data/datasourse/local/hive_database.dart';
import 'package:heart_pick/platform/localization/app_localizations.dart';
import 'package:heart_pick/platform/localization/app_localizations_delegate.dart';
import 'package:heart_pick/presentation/bloc/game_bloc.dart';
import 'package:heart_pick/presentation/routes.dart';
import 'package:heart_pick/presentation/utils/colors.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'data/datasourse/remote/rest_api.dart';
import 'data/network_client.dart';
import 'data/repositories/app_repository_impl.dart';
import 'domain/repositories/app_repository.dart';

final locator = GetIt.instance;

Future<void> _setUp() async {
  locator.registerSingleton<NetworkClient>(NetworkClient());
  locator.registerSingleton<RestApi>(RestApiImpl(networkClient: locator.get<NetworkClient>()));
  locator.registerSingleton<AppRepository>(AppRepositoryImpl(restApi: locator.get<RestApi>()));
  locator.registerSingleton<HiveService>(
    HiveServiceImpl(),
    dispose: (h) async => h.compactAndClose(),
  );
  await locator.get<HiveService>().initAndRegisterAdapters();
  await locator.get<HiveService>().openHiveBoxes();
  locator.registerLazySingleton<GameBloc>(
      () => GameBloc(repository: locator.get<AppRepository>(), hiveService: locator.get<HiveService>()));
}

void main() async {
  await runZonedGuarded(
    () async {
      await Hive.initFlutter();
      await _setUp();
      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        systemNavigationBarColor: AppColors.purpleBackground,
      ));

      runApp(
        BlocProvider.value(
          value: locator<GameBloc>()
            ..add(
              const GameEvent.loadProducts(),
            ),
          child: const MyApp(),
        ),
      );
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
