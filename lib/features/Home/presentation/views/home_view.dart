import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kutuku/constants.dart';
import 'package:kutuku/features/Home/presentation/views/widgets/adds_list_view.dart';
import 'package:kutuku/features/Home/presentation/views/widgets/home_appbar.dart';
import 'package:kutuku/features/Home/presentation/views/widgets/home_sections.dart';
import 'package:kutuku/features/Home/presentation/views/widgets/product_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kPrimaryPadding),
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
        ),
      ),
    );
  }
}
