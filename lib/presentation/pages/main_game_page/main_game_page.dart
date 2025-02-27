import 'package:flutter/material.dart';
import 'package:heart_pick/platform/localization/app_localizations.dart';
import 'package:heart_pick/presentation/routes.dart';
import 'package:heart_pick/presentation/widgets/background_widget.dart';
import 'package:heart_pick/presentation/widgets/buttons/action_game_button_widget.dart';
import 'package:heart_pick/presentation/widgets/text_widget.dart';

import '../../utils/colors.dart';
import '../../utils/text_styles.dart';
import '../../widgets/product_card_widget.dart';
import '../../widgets/progress_stepper_widget.dart';
import '../../widgets/step_counter_widget.dart';

class MainGamePage extends StatefulWidget {
  const MainGamePage({super.key});

  @override
  State<MainGamePage> createState() => _MainGamePageState();
}

class _MainGamePageState extends State<MainGamePage> {
  int currentStep = 1;
  final int totalSteps = 10;

  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
                      StepCounterWidget(
                        currentStep: currentStep,
                        totalSteps: totalSteps,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 28.0,
                  ),
                  ProgressStepperWidget(
                    currentStep: currentStep,
                    totalSteps: totalSteps,
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.11,
                  ),
                  TextWidget(
                      text: AppLocalizations.of(context).whatWillYouChoose,
                      textStyles: TextStyles.title30.apply(color: AppColors.white)),
                  const SizedBox(height: 24.0),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ProductCardWidget(
                            imageUrl:
                                'http://dayme.com.ua/localStorage/photos/offers/0/1/381/020aa143-055e-4baf-8793-11da26cf80d3_214_214.jpeg',
                            title: 'Product',
                            onTap: () {},
                            isLiked: true,
                          ),
                          ProductCardWidget(
                            imageUrl:
                                'http://dayme.com.ua/localStorage/photos/offers/0/1/381/020aa143-055e-4baf-8793-11da26cf80d3_214_214.jpeg',
                            title: 'Product 2 Product 2  Product 2 Product 2 Product 2 Product 2 Product 2 ',
                            onTap: () {},
                            isLiked: false,
                          )
                        ],
                      ),
                      const Positioned(
                        top: 90.0,
                        child: SizedBox(
                          width: 56.0,
                          height: 56.0,
                          child: ActionButtonWidget(
                            actionButtonType: ActionButtonType.or,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 56.0),
                child: ActionButtonWidget(
                  actionButtonType: ActionButtonType.nextStep,
                  onTap: () {
                    setState(() {
                      currentStep++;
                    });
                    if (currentStep > totalSteps) {
                      Navigator.of(context).pushNamed(Routes.finish);
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
