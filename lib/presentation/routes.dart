import 'package:flutter/material.dart';
import 'package:heart_pick/presentation/pages/finish_game_page.dart';
import 'package:heart_pick/presentation/pages/main_game_page/main_game_page.dart';
import 'package:heart_pick/presentation/pages/start_game_page.dart';

class Routes {
  Routes._();

  static const start = '/';
  static const game = '/game';
  static const finish = '/finish';

  static Route<dynamic> onGenerateRoute(BuildContext context, RouteSettings settings) {
    switch (settings.name) {
      case Routes.start:
        {
          return MaterialPageRoute(builder: (context) => const StartGamePage());
        }
      case Routes.game:
        {
          return MaterialPageRoute(builder: (context) => const MainGamePage());
        }
      case Routes.finish:
        {
          return MaterialPageRoute(builder: (context) => const FinishGamePage());
        }

      default:
        {
          throw ArgumentError('Wrong route');
        }
    }
  }
}
