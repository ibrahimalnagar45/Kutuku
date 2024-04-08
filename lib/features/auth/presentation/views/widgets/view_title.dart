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
        const SizedBox(
          height: 10,
        ),
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
