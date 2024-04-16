import 'package:flutter/material.dart';
 import 'package:kutuku/constants.dart';
import 'package:kutuku/features/Home/presentation/views/widgets/home_footer_buttons.dart';
import 'package:kutuku/features/Home/presentation/views/widgets/main_home_widgetd.dart';
import 'package:kutuku/features/Home/presentation/views/widgets/right_category_card.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      persistentFooterButtons: const [
        HomeViewPersistentFooterButtons(),
      ],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kPrimaryPadding),
        child: ListView(
          children: const [
            MainHomeViewWidgets(),
            SizedBox(
              height: 15,
            ),
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
