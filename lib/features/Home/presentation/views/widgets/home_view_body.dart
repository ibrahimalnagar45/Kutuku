import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kutuku/features/Home/presentation/views/widgets/category_title.dart';
import 'package:kutuku/features/Home/presentation/views/widgets/main_home_widgetd.dart';
import 'package:kutuku/features/Home/presentation/views/widgets/products_gridview.dart';
import 'adds_list_view.dart';

import 'product_card.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
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
        Expanded(child: ProductsGridView()),
      ],
    );
  }
}
