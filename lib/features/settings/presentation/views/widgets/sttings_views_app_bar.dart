import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
        IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
              GoRouter.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios_new_outlined)),
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
