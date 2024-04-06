import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingImageContainer extends StatelessWidget {
  const OnboardingImageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/images/onboarding1.jpeg',
      height: 200,
    );

    return Container(
      height: 100,
      width: 100,
      decoration: const BoxDecoration(
        color: Colors.amberAccent,
        image: DecorationImage(
          image: AssetImage('assets/images/02 - Onboarding.png'),
        ),
      ),
      // child: SvgPicture.asset(
      //   'assets/images/02 - Onboarding.svg',
      //   height: 100,
      // ),
    );
  }
}
