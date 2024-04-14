import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:kutuku/constants.dart';
import 'package:kutuku/features/Home/presentation/views/widgets/full_width_image.dart';

import '../../../../../core/utils/widgets/build_dots.dart';

class AddsListView extends StatefulWidget {
  const AddsListView({super.key});

  @override
  State<AddsListView> createState() => _AddsListViewState();
}

class _AddsListViewState extends State<AddsListView> {
  final List<String> adds = const [
    'assets/images/onboarding1.jpeg',
    'assets/images/onboarding2.jpeg',
    'assets/images/onboarding3.jpeg',
    'assets/images/onboarding1.jpeg',
    'assets/images/onboarding2.jpeg',
    'assets/images/onboarding3.jpeg',
  ];
  int currentIndex = 0;
  late Timer _timer;
  late PageController _pageController;
  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    _startAutoScroll();
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    _pageController.dispose();
    super.dispose();
  }

  void _startAutoScroll() {
    bool isForward = true;
    // Auto scroll every 2 seconds
    _timer = Timer.periodic(const Duration(seconds: 2), (timer) {
      if (isForward) {
        if (currentIndex < adds.length - 1) {
          currentIndex++;
          setState(() {});
        } else {
          isForward = false;
          currentIndex--;
          setState(() {});
        }
      } else {
        if (currentIndex > 0) {
          currentIndex--;
          setState(() {});
        } else {
          isForward = true;
          currentIndex++;
          setState(() {});
        }
      }
      _pageController.animateToPage(
        currentIndex,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeIn,
      );
    });
  }

  // final int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 130,
          child: PageView.builder(
            controller: _pageController,
            onPageChanged: (value) {
              currentIndex = value;
            },
            scrollDirection: Axis.horizontal,
            itemCount: adds.length,
            itemBuilder: (context, index) {
              return FullWidthImage(
                image: adds[index],
              );
            },
          ),
        ),
        SizedBox(
          height: 20,
          // width: MediaQuery.of(context).size.width,
          child: Align(
            // alignment: Alignment.center,
            child: BuildDots(
              currentIndex: currentIndex,
              itemcount: adds.length,
            ),
          ),
        ),
      ],
    );
  }
}
