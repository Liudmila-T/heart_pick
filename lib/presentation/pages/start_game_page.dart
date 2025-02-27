import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heart_pick/platform/localization/app_localizations.dart';
import 'package:heart_pick/presentation/routes.dart';
import 'package:heart_pick/presentation/widgets/background_widget.dart';
import 'package:heart_pick/presentation/widgets/buttons/action_game_button_widget.dart';

import '../../main.dart';
import '../bloc/game_bloc.dart';
import '../utils/assets.dart';
import '../utils/colors.dart';
import '../utils/text_styles.dart';
import '../widgets/buttons/start_game_button_widget.dart';
import '../widgets/snack_bar_widger.dart';

class StartGamePage extends StatelessWidget {
  const StartGamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: BlocBuilder(
              bloc: locator<GameBloc>(),
              builder: (context, state) {
                if (state is ErrorGameState) {
                  showErrorSnackBar(context);
                }
                return Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: ActionButtonWidget(
                        actionButtonType: ActionButtonType.close,
                        onTap: () {},
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.1,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 36.0),
                      child: Image.asset(
                        AppIcons.promoIcon,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.09,
                    ),
                    state is LoadingGameState
                        ? Text(
                            AppLocalizations.of(context).loading,
                            style: TextStyles.title18.apply(
                              color: AppColors.lightPurpleText,
                            ),
                          )
                        : const SizedBox(
                            height: 31.0,
                          ),
                    const SizedBox(
                      height: 24.0,
                    ),
                    StartGameButtonWidget(
                      onTap: () {
                        if (state is DataGameState) Navigator.of(context).pushNamed(Routes.game);
                      },
                      title: AppLocalizations.of(context).start,
                    )
                  ],
                );
              }),
        ),
      ),
    );
  }
}
