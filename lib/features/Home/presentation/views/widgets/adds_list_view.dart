import 'package:flutter/widgets.dart';
import 'package:kutuku/constants.dart';

class AddsListView extends StatelessWidget {
  const AddsListView({super.key});
  final List<String> adds = const [
    'assets/images/onboarding1.jpeg',
    'assets/images/onboarding2.jpeg',
    'assets/images/onboarding3.jpeg',
    'assets/images/onboarding1.jpeg',
    'assets/images/onboarding2.jpeg',
    'assets/images/onboarding3.jpeg',
  ];

  // final int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: PageView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: adds.length,
        itemBuilder: (context, index) {
          return SizedBox(
            width: MediaQuery.of(context).size.width - kPrimaryPadding,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Image.asset(
                  adds[index],
                  fit: BoxFit.fill,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
