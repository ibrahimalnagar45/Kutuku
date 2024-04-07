import 'package:flutter/material.dart';
import 'package:kutuku/constants.dart';

import 'package:kutuku/features/onboarding/presentation/views/widgets/onboarding_view.body.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: kPrimaryPadding),
        child: OnboardingViewBody(),
      ),
    );
  }
}
