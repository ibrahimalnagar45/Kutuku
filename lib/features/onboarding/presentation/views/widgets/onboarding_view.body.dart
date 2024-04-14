import 'dart:async'; 
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kutuku/constants.dart';
import 'package:kutuku/core/utils/app_routes.dart';
import 'package:kutuku/core/utils/styles.dart';
import 'package:kutuku/core/utils/widgets/custom_button.dart';
import 'package:kutuku/features/onboarding/data/models/slider_model.dart';
import 'package:kutuku/features/onboarding/presentation/views/widgets/build_dots.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  List<SliderModel>? sliders;
  int currentIndex = 0;
  late PageController _pageController;
  late Timer _timer;
  @override
  void initState() {
    sliders = kSliders;
    _pageController = PageController(initialPage: 0);
    _startAutoScroll();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _timer.cancel();
    super.dispose();
  }

  void _startAutoScroll() {
    bool isForward = true;
    // Auto scroll every 2 seconds
    _timer = Timer.periodic(const Duration(seconds: 2), (timer) {
      if (isForward) {
        if (currentIndex < sliders!.length - 1) {
          currentIndex++;
        } else {
          isForward = false;
          currentIndex--;
        }
      } else {
        if (currentIndex > 0) {
          currentIndex--;
        } else {
          isForward = true;
          currentIndex++;
        }
      }
      _pageController.animateToPage(
        currentIndex,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 25,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .6,
          width: MediaQuery.of(context).size.width * 3,
          child: buildOnboardingPageViews(),
        ),
        // OnboardingImageContainer(image: 'assets/images/onboarding1.jpeg'),

        const SizedBox(
          height: 20,
        ),
        Text(
          sliders![currentIndex].title,
          textAlign: TextAlign.center,
          style: Styles.titleStyle,
        ),
        Text(
          sliders![currentIndex].description,
          textAlign: TextAlign.center,
          style: Styles.desStyle,
        ),
        SizedBox(
          height: 40,
          child: BuildDots(
            currentIndex: currentIndex,
          ),
        ),
        CustomButton(
          text: 'Create Acount',
          onPressed: () {
            GoRouter.of(context).push(AppRoutes.kRgister);
          },
        ),
        const SizedBox(
          height: 10,
        ),
        TextButton(
          onPressed: () => GoRouter.of(context).push(AppRoutes.kLogin),
          child: Text(
            'Already Have An Account?',
            textAlign: TextAlign.center,
            style: Styles.desStyle
                .copyWith(color: kPrimaryColor, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  PageView buildOnboardingPageViews() {
    return PageView.builder(
      scrollDirection: Axis.horizontal,
      controller: _pageController,
      onPageChanged: (value) {
        setState(
          () {
            currentIndex = value;
          },
        );
      },
      itemCount: sliders!.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: AnimatedContainer(
              duration: const Duration(seconds: 1),
              child: Image.asset(
                sliders![index].image,
                fit: BoxFit.fill,
              ),
            ),
          ),
        );
      },
    );
  }
}
 
