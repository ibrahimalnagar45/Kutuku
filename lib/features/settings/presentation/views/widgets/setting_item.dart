import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:kutuku/constants.dart';
import 'package:kutuku/core/utils/styles.dart';

class SettingItem extends StatelessWidget {
  const SettingItem(
      {super.key,
      required this.icon,
      required this.title,
      this.discreption,
      this.onPressed,
      this.color});
  final Widget icon;
  final String title;
  final String? discreption;
  final Color? color;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.symmetric(horizontal: kPrimaryPadding),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            kPrimaryPadding,
          )),
      child: discreption != null
          ? Row(
              children: [
                icon,
                const SizedBox(
                  width: 20,
                ),
                Text(
                  title,
                  style: color != null
                      ? Styles.textStyle15.copyWith(color: color)
                      : Styles.textStyle15,
                ),
                const Spacer(),
                Text(
                  discreption!,
                  style: color != null
                      ? Styles.textStyle15.copyWith(color: color)
                      : Styles.desStyle,
                ),
                IconButton(
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: kSecondaryColor,
                  ),
                  onPressed: onPressed,
                ),
              ],
            )
          : Row(
              children: [
                icon,
                const SizedBox(
                  width: 20,
                ),
                Text(
                  title,
                  style: color != null
                      ? Styles.textStyle15.copyWith(color: color)
                      : Styles.textStyle15,
                ),
                const Spacer(),
                IconButton(
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: kSecondaryColor,
                  ),
                  onPressed: onPressed,
                ),
              ],
            ),
    );
  }
}
