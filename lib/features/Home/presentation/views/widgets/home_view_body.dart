import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kutuku/features/Home/presentation/views/widgets/category_title.dart';
import 'package:kutuku/features/Home/presentation/views/widgets/main_home_widgetd.dart';
import 'package:kutuku/features/Home/presentation/views/widgets/products_gridview.dart';
import '../../../../../constants.dart';
import 'adds_list_view.dart';

import 'product_card.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: testProducts.length,
        itemBuilder: (context, index) {
          return index == 0
              ? const Column(
                  children: [
                    MainHomeViewWidgets(),
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
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ProductCard(
                      productModel: testProducts[index],
                    ),
                    ProductCard(
                      productModel: testProducts[index],
                    ),
                  ],
                );
        });
  }
}
