import 'package:flutter/widgets.dart';

import 'adds_list_view.dart';
import 'home_appbar.dart';
import 'home_sections.dart';
import 'product_card.dart';

class HomeViewBody
 extends StatelessWidget {
  const HomeViewBody
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
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
            // SizedBox(
            //   height: 200,
            //   child: Container(color: Colors.amber),
            // )
          ],
        );
  }
}