import 'package:flutter/material.dart';
 import 'package:kutuku/constants.dart';

import 'adds_list_view.dart';
import 'category_title.dart';
import 'home_appbar.dart';
import 'home_sections.dart';
import 'product_card.dart';

class HomeSectionBody extends StatelessWidget {
  const HomeSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: kPrimaryPadding,
        ),
        child: ListView(
          children: const [
            HomeAppBar(),
            SizedBox(
              height: 10,
            ),
            HomeSections(),
            SizedBox(
              height: 15,
            ),
            AddsListView(),
            SizedBox(
              height: 15,
            ),
            CategoryTitle(categoryTitle: 'New Affrails🔥'),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                ProductCard(),
                ProductCard(),
              ],
            ),
            Row(
              children: [
                ProductCard(),
                ProductCard(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
