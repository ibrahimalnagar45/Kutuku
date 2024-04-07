import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kutuku/constants.dart';
import 'package:kutuku/core/utils/styles.dart';

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

  final SvgPicture? prefixIcon;
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
        child: true
            ? Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: onPressed,
                    icon: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: colored ? kPrimaryColor : Colors.white,
                      ),
                      child: Center(
                        child: Text(
                          text,
                          style:
                              Styles.titleStyle.copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
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
