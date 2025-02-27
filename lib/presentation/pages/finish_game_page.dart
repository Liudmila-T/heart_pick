import 'dart:io';

import 'package:flutter/material.dart';
import 'package:heart_pick/platform/localization/app_localizations.dart';
import 'package:heart_pick/presentation/utils/assets.dart';
import 'package:heart_pick/presentation/utils/text_styles.dart';
import 'package:heart_pick/presentation/widgets/background_widget.dart';
import 'package:heart_pick/presentation/widgets/buttons/action_game_button_widget.dart';
import 'package:heart_pick/presentation/widgets/step_counter_widget.dart';

import '../../main.dart';
import '../bloc/game_bloc.dart';
import '../utils/colors.dart';
import '../widgets/buttons/start_game_button_widget.dart';
import '../widgets/text_widget.dart';

class FinishGamePage extends StatelessWidget {
  const FinishGamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: BackgroundWidget(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left: 16.0, right: 16.0, top: Platform.isAndroid ? 16.0 : 0.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ActionButtonWidget(
                          actionButtonType: ActionButtonType.close,
                          onTap: () {},
                        ),
                        const StepCounterWidget(
                          currentStep: 10,
                          totalSteps: 10,
                          isFinish: true,
                        )
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.14,
                    ),
                    TextWidget(
                      text: AppLocalizations.of(context).congratulations,
                      textStyles: TextStyles.title30.apply(color: AppColors.white),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    TextWidget(
                      text: AppLocalizations.of(context).yourWinnings,
                      textStyles: TextStyles.title40.apply(color: AppColors.white),
                    ),
                    const SizedBox(
                      height: 36.0,
                    ),
                    Image.asset(
                      AppIcons.winIcon,
                      width: MediaQuery.sizeOf(context).height * 0.4,
                      height: MediaQuery.sizeOf(context).height * 0.4,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 24.0),
                  child: StartGameButtonWidget(
                    title: AppLocalizations.of(context).collectBonuses,
                    withIcon: true,
                    onTap: () {
                      locator<GameBloc>().add(const GameEvent.sendGameResult());
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
