import 'package:flutter/widgets.dart';
import 'package:kutuku/core/utils/widgets/build_dots.dart';
import 'package:kutuku/features/Home/presentation/views/widgets/category_title.dart';
import 'package:kutuku/features/Home/presentation/views/widgets/main_home_widgetd.dart';
import 'adds_list_view.dart';
import 'home_appbar.dart';
import 'home_sections.dart';
import 'product_card.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
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
    );
  }
}
