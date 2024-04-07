import 'package:flutter/material.dart';
import 'package:kutuku/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, this.onPressed});
  final String text;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Text(
          text,
          style: Styles.decStyle,
        ),
      ),
    );
  }
}
