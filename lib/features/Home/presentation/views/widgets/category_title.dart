import 'package:flutter/widgets.dart';
import 'package:kutuku/constants.dart';
import 'package:kutuku/core/utils/styles.dart';

class CategoryTitle extends StatelessWidget {
  const CategoryTitle({super.key, required this.categoryTitle});
  final String categoryTitle;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          categoryTitle,
          style: Styles.titleStyle,
        ),
        Text(
          'See All ',
          style: Styles.desStyle.copyWith(
            color: kPrimaryColor,
          ),
        )
      ],
    );
  }
}
