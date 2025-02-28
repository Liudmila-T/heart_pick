import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heart_pick/platform/localization/app_localizations.dart';
import 'package:heart_pick/presentation/routes.dart';
import 'package:heart_pick/presentation/widgets/background_widget.dart';
import 'package:heart_pick/presentation/widgets/buttons/action_game_button_widget.dart';
import 'package:heart_pick/presentation/widgets/text_widget.dart';

import '../../main.dart';
import '../bloc/game_bloc.dart';
import '../utils/colors.dart';
import '../utils/text_styles.dart';
import '../widgets/product_card_widget.dart';
import '../widgets/progress_stepper_widget.dart';
import '../widgets/step_counter_widget.dart';

class MainGamePage extends StatefulWidget {
  const MainGamePage({super.key});

  @override
  State<MainGamePage> createState() => _MainGamePageState();
}

class _MainGamePageState extends State<MainGamePage> {
  final _pageController = PageController();

  GameBloc get _gameBloc => locator<GameBloc>();

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: BackgroundWidget(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left: 16.0, right: 16.0, top: Platform.isAndroid ? 16.0 : 0.0),
            child: BlocBuilder(
                bloc: _gameBloc,
                builder: (context, state) {
                  if (state is DataGameState) {
                    int currentStep = state.currentStep;
                    int totalSteps = state.totalStep;
                    final products = state.products;
                    return Column(
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
                              textStyles: TextStyles.title30.apply(color: AppColors.white),
                            ),
                            const SizedBox(height: 24.0),
                            SizedBox(
                              height: MediaQuery.sizeOf(context).height * 0.4,
                              child: PageView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                controller: _pageController,
                                scrollDirection: Axis.horizontal,
                                itemCount: products.length,
                                itemBuilder: (context, index) {
                                  final pair = products[index];
                                  return Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          ProductCardWidget(
                                            imageUrl: pair.first.photoUrl,
                                            title: pair.first.name,
                                            onTap: () {
                                              _gameBloc.add(GameEvent.selectProduct(pair.first.productId));
                                            },
                                            isLiked: state.currentLikeId == pair.first.productId,
                                          ),
                                          ProductCardWidget(
                                            imageUrl: pair.last.photoUrl,
                                            title: pair.last.name,
                                            onTap: () {
                                              _gameBloc.add(GameEvent.selectProduct(pair.last.productId));
                                            },
                                            isLiked: state.currentLikeId == pair.last.productId,
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
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 24.0),
                          child: ActionButtonWidget(
                            actionButtonType: ActionButtonType.nextStep,
                            onTap: () {
                              if (state.currentLikeId != null) {
                                _gameBloc.add(const GameEvent.changeGameStep());
                                if (currentStep == totalSteps) {
                                  Navigator.of(context).pushNamed(Routes.finish);
                                } else {
                                  _pageController.nextPage(
                                      duration: const Duration(milliseconds: 300), curve: Curves.linear);
                                }
                              }
                            },
                          ),
                        ),
                      ],
                    );
                  } else {
                    return const SizedBox.shrink();
                  }
                }),
          ),
        ),
      ),
    );
  }
}
