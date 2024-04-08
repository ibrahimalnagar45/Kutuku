
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../styles.dart';

class IconTextButton extends StatelessWidget {
  const IconTextButton({
    super.key,
    required this.colored,
    required this.prefixIcon,
    required this.onPressed,
    required this.text,
  });

  final bool colored;
  final String? prefixIcon;
  final void Function()? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: colored ? kPrimaryColor : Colors.grey.withOpacity(.25),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              prefixIcon!,
              scale: 7,
            ),
            IconButton(
              onPressed: onPressed,
              icon: Center(
                child: Text(
                  text,
                  style: colored
                      ? Styles.titleStyle.copyWith(color: Colors.white)
                      : Styles.titleStyle,
                ),
              ),
            ),
          ],
        ),
      );
  }
}
