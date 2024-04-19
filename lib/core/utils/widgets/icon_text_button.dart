import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../styles.dart';

class IconTextButton extends StatelessWidget {
  const IconTextButton({
    super.key,
    required this.colored,
    required this.prefixIcon,
      this.onPressed,
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
        color: colored ? kPrimaryColor : Colors.white,
        border: colored
            ? null
            : Border.all(
                color: Colors.grey.withOpacity(.3),
              ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            prefixIcon!,
            scale: 7,
          ),
          Center(
            child: IconButton(
              onPressed: onPressed,
              icon: Text(
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
