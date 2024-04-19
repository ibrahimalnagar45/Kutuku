import 'package:flutter/material.dart';
import 'package:kutuku/core/utils/styles.dart';

class SettingViewsAppBar extends StatelessWidget {
  const SettingViewsAppBar({
    super.key,
    required this.title,
    this.onPressed,
  });
  final String title;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Spacer(),
        Text(
          title,
          style: Styles.titleStyle,
        ),
        const Spacer(),
        IconButton(
          onPressed: onPressed,
          icon: const Icon(Icons.menu),
        ),
      ],
    );
  }
}
