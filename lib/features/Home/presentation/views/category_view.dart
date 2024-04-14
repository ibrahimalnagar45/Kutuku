import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kutuku/constants.dart';
import 'package:kutuku/features/Home/presentation/views/widgets/main_home_widgetd.dart';
import 'package:kutuku/features/Home/presentation/views/widgets/right_category_card.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kPrimaryPadding),
        child: ListView(
          children: const [
            MainHomeViewWidgets(),
            CatrgoryCard(
              isRightText: true,
              image: 'assets/images/onboarding2.jpeg',
              title: 'Clothes',
              description: '211 Item',
            ),
            CatrgoryCard(
              isRightText: false,
              image: 'assets/images/onboarding2.jpeg',
              title: 'Clothes',
              description: '211 Item',
            )
          ],
        ),
      ),
    );
  }
}
