import 'package:flutter/material.dart';

import 'onboarding_image_container.dart';

class OnboardingImagesList extends StatelessWidget {
  const OnboardingImagesList({super.key});
  final List<String> images = const [
    'assets/images/onboarding1.jpeg',
    'assets/images/onboarding2.jpeg',
    'assets/images/onboarding3.jpeg'
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: images.length,
      separatorBuilder: (context, index) => Padding(
          padding:const EdgeInsets.symmetric(horizontal: 30),
          child: Container(
            color: Colors.white,
          )),
      itemBuilder: (context, index) => Padding(
        padding:const  EdgeInsets.symmetric(horizontal: 20),
        child: OnboardingImageContainer(
          image: images[index],
        ),
      ),
    );
  }
}
