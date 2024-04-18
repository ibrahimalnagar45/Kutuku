import 'package:flutter/material.dart';
import 'package:kutuku/constants.dart';
import 'package:kutuku/core/utils/styles.dart';
import 'package:kutuku/features/search/presentation/views/widgets/last_search_section.dart';
import 'package:kutuku/features/search/presentation/views/widgets/popular_items_listview.dart';
import 'package:kutuku/features/search/presentation/views/widgets/search_view_body.dart';

import 'widgets/search_section.dart';

class HomeSearchView extends StatelessWidget {
  const HomeSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(kPrimaryPadding),
        child: SearchViewBody(),
      ),
    );
  }
}
