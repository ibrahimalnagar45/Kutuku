import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:kutuku/constants.dart';
import 'package:kutuku/core/utils/routes.dart';
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

  @override
  void initState() {
    sliders = kSliders;
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
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
