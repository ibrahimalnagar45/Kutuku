import 'package:flutter/widgets.dart';

import 'home_appbar.dart';
import 'home_sections.dart';

class MainHomeViewWidgets extends StatelessWidget {
  const MainHomeViewWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        HomeAppBar(),
        SizedBox(
          height: 10,
        ),
        HomeSections(),
      ],
    );
  }
}
