import 'package:flutter/material.dart';
import 'package:kutuku/constants.dart';
import 'package:kutuku/core/utils/styles.dart';
import 'icon_text_button.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.onPressed,
    this.colored = true,
    this.prefixIcon,
  });
  final String text;
  final void Function()? onPressed;
  final bool colored;

  final String? prefixIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: colored ? kPrimaryColor : Colors.white,
        ),
        child: prefixIcon != null
            ? IconTextButton(
                colored: colored,
                prefixIcon: prefixIcon,
                onPressed: onPressed,
                text: text,
              )
            : IconButton(
                onPressed: onPressed,
                icon: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: colored ? kPrimaryColor : Colors.white,
                  ),
                  child: Center(
                    child: Text(
                      text,
                      style: Styles.titleStyle.copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}
