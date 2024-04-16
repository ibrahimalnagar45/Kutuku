import 'package:flutter/material.dart';
import 'package:kutuku/core/utils/styles.dart';
import 'package:kutuku/features/search/presentation/views/widgets/last_search_container.dart';
import 'package:kutuku/features/search/presentation/views/widgets/popular_search_container.dart';

import 'widgets/search_section.dart';

class HomeSearchView extends StatelessWidget {
  const HomeSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchSection(),
              SizedBox(
                height: 10,
              ),
              Text(
                'Last Search',
                style: Styles.titleStyle,
              ),
              SizedBox(
                height: 10,
              ),
              LastSearchContainer(
                text: 'Pants',
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Popular Search',
                style: Styles.titleStyle,
              ),
              SizedBox(
                height: 10,
              ),
              PopularSearchContainer(
                title: 'BANGBANG',
                descrption: 'NABHBNAKMD',
                image: 'assets/images/onboarding3.jpeg',
                type: 'Popular',
              ),
              SizedBox(
                height: 10,
              ),
              PopularSearchContainer(
                type: 'Hat',
                title: 'BANGBANG',
                descrption: 'NABHBNAKMD',
                image: 'assets/images/onboarding2.jpeg',
              ),
              SizedBox(
                height: 10,
              ),
              PopularSearchContainer(
                title: 'BANGBANG',
                type: 'New',
                descrption: 'NABHBNAKMD',
                image: 'assets/images/onboarding1.jpeg',
              ),
              SizedBox(
                height: 10,
              ),
              PopularSearchContainer(
                title: 'BANGBANG',
                type: 'Popular',
                descrption: 'NABHBNAKMD',
                image: 'assets/images/onboarding3.jpeg',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
