import 'package:flutter/material.dart';

import 'popular_search_container.dart';

class PopularItems extends StatelessWidget {
  const PopularItems({super.key});
  final List<PopularSearchContainer> items = const [
    PopularSearchContainer(
      title: 'BANGBANG',
      descrption: 'NABHBNAKMD',
      image: 'assets/images/onboarding3.jpeg',
      type: 'Popular',
    ),
    PopularSearchContainer(
      type: 'Hat',
      title: 'BANGBANG',
      descrption: 'NABHBNAKMD',
      image: 'assets/images/onboarding2.jpeg',
    ),
    PopularSearchContainer(
      title: 'BANGBANG',
      type: 'New',
      descrption: 'NABHBNAKMD',
      image: 'assets/images/onboarding1.jpeg',
    ),
    PopularSearchContainer(
      title: 'BANGBANG',
      type: 'Popular',
      descrption: 'NABHBNAKMD',
      image: 'assets/images/onboarding3.jpeg',
    ),
    PopularSearchContainer(
      title: 'BANGBANG',
      descrption: 'NABHBNAKMD',
      image: 'assets/images/onboarding3.jpeg',
      type: 'Popular',
    ),
    PopularSearchContainer(
      type: 'Hat',
      title: 'BANGBANG',
      descrption: 'NABHBNAKMD',
      image: 'assets/images/onboarding2.jpeg',
    ),
    PopularSearchContainer(
      title: 'BANGBANG',
      type: 'New',
      descrption: 'NABHBNAKMD',
      image: 'assets/images/onboarding1.jpeg',
    ),
    PopularSearchContainer(
      title: 'BANGBANG',
      type: 'Popular',
      descrption: 'NABHBNAKMD',
      image: 'assets/images/onboarding3.jpeg',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        // physics:PageScrollPhysics(),
        physics: NeverScrollableScrollPhysics(),
        // shrinkWrap: true,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: items[index],
          );
        });
  }
}
