
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class ViewTitle extends StatelessWidget {
  const ViewTitle({super.key, required this.title, required this.subTitle});
  final String title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SafeArea(
          child: Text(
            title,
            style: Styles.titleStyle,
          ),
        ),
        Text(
          subTitle,
          style: Styles.desStyle,
        ),
      ],
    );
  }
}
