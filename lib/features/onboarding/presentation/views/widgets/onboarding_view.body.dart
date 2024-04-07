import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kutuku/core/utils/styles.dart';
import 'package:kutuku/core/utils/widgets/custom_button.dart';
import 'package:kutuku/features/onboarding/presentation/views/widgets/onboarding_dot_list.dart';
import 'package:kutuku/features/onboarding/presentation/views/widgets/onboarding_image_container.dart';
import 'package:kutuku/features/onboarding/presentation/views/widgets/onboarding_images_list.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        OnboardingImageContainer(image: 'assets/images/onboarding1.jpeg'),
        Text(
          "Various Collection Of The Latest Products",
          textAlign: TextAlign.center,
          style: Styles.decStyle,
        ),
        SizedBox(
          height: 20,
          child: DotsList(),
        ),
        CustomButton(text: 'Create Acount')
      ],
    );
  }
}
