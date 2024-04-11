import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kutuku/constants.dart';
import 'package:kutuku/core/utils/app_routes.dart';
import 'package:kutuku/core/utils/styles.dart';

class SplahViewBody extends StatefulWidget {
  const SplahViewBody({super.key});

  @override
  State<SplahViewBody> createState() => _SplahViewBodyState();
}

class _SplahViewBodyState extends State<SplahViewBody>
    with SingleTickerProviderStateMixin {
  late Animation<Offset> _animation;
  late AnimationController _animationController;
  @override
  void initState() {
    super.initState();
    initAnimation();
    goToOnBoarding();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(
          flex: 4,
        ),
        AnimatedBuilder(
          animation: _animation,
          builder: (context, _) => SlideTransition(
            position: _animation,
            child: const Text(
              kAppName,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Text(
          textAlign: TextAlign.center,
          'Any shopping just from here',
          style: Styles.testStyle
            ..copyWith(
              color: Colors.white.withOpacity(.8),
            ),
        ),
        const Spacer(
          flex: 4,
        ),
        Text(
          textAlign: TextAlign.center,
          'version 0.0.1',
          style: TextStyle(
            color: Colors.white.withOpacity(.8),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
      ],
    );
  }

  void initAnimation() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _animation = Tween(begin: const Offset(0, -8), end: Offset.zero)
        .animate(_animationController);
    _animationController.forward();
  }

  void goToOnBoarding() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        GoRouter.of(context).push(AppRoutes.kONboarding);
      },
    );
  }
}
