import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingImageContainer extends StatelessWidget {
  const OnboardingImageContainer({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
        // height: MediaQuery.of(context).size.height * 0.5,
        // width: MediaQuery.of(context).size.width * .8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          //   image: DecorationImage(
          //     image: AssetImage(image),
          //     fit: BoxFit.fill,
          //   ),
          //
        ),
        child: Image.asset(
          'assets/images/onboarding1.jpeg',
          fit: BoxFit.fill,
        ));
  }
}
