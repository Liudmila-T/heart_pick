import 'package:flutter/material.dart';
import 'package:heart_pick/presentation/utils/colors.dart';

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: RadialGradient(
            stops: const [0.2, 1.0],
            colors: const [
              AppColors.lightPurpleBackground,
              AppColors.purpleBackground,
            ],
            transform: _RadialGradientVerticalTransform(),
          ),
        ),
        child: child,
      ),
    );
  }
}

class _RadialGradientVerticalTransform extends GradientTransform {
  @override
  Matrix4 transform(Rect bounds, {TextDirection? textDirection}) {
    return Matrix4.identity()
      ..translate(bounds.width / 2, bounds.height / 2)
      ..scale(1.0, 2.0)
      ..translate(-bounds.width / 2, -bounds.height / 2);
  }
}
