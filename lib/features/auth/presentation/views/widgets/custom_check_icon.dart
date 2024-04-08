import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../constants.dart';

class CustomCheckIcon extends StatelessWidget {
  const CustomCheckIcon(
      {super.key, required this.icon, this.color = kPrimaryColor});
  final Widget icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      minRadius: 75,
      backgroundColor: Colors.grey.withBlue(255).withOpacity(.2),
      child: CircleAvatar(
        minRadius: 55,
        backgroundColor: color,
        child: icon,
      ),
    );
  }
}
