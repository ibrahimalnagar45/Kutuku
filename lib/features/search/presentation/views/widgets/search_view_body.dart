import 'package:flutter/material.dart';
import 'package:kutuku/constants.dart';
import 'package:kutuku/core/utils/styles.dart';
import 'package:kutuku/features/search/presentation/views/widgets/last_search_section.dart';
import 'package:kutuku/features/search/presentation/views/widgets/popular_items_listview.dart';

import 'search_section.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        // physics: const BouncingScrollPhysics(),
        // physics: NeverScrollableScrollPhysics(),
        slivers: [
          const SliverToBoxAdapter(child: SearchSection()),
          const SliverToBoxAdapter(child: SizedBox(height: 10)),
          SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Last Search',
                  style: Styles.titleStyle,
                ),
                Text(
                  'Clear All',
                  style: Styles.desStyle.copyWith(color: kPrimaryColor),
                ),
              ],
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
          const SliverToBoxAdapter(child: LastSearchSection()),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
          const SliverToBoxAdapter(
            child: Text(
              'Popular Search',
              style: Styles.titleStyle,
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
          // SliverFillViewport(
          //   delegate: SliverChildListDelegate(
          //     [
          //       const PopularItems(),
          //     ],
          //   ),
          // ),
          const SliverFillRemaining(
            child: Expanded(
              child: PopularItems(),
            ),
          ),
        ],
      ),
    );
  }
}
