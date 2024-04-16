import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kutuku/constants.dart';
import 'package:kutuku/core/utils/helpers/build_outline_input_border.dart';
import 'package:kutuku/features/Home/presentation/views/widgets/last_search_container.dart';

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
            children: [
              SearchSection(),
              LastSearchContainer(
                text: 'Pants',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
