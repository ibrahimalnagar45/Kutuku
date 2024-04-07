import 'package:flutter/material.dart';

import 'package:kutuku/features/onboarding/presentation/views/widgets/onboarding_view.body.dart';

class OnboardingView1 extends StatelessWidget {
  const OnboardingView1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: OnboardingViewBody(),
    );
  }
}
