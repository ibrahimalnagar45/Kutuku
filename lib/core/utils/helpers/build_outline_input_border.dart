import 'package:flutter/material.dart';

import '../../../constants.dart';

OutlineInputBorder buildOutLineInputBorder(
    {Color color = Colors.grey, bool enabled = false}) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(kPrimaryPadding),
    borderSide: enabled ? BorderSide(color: color, width: 1) : BorderSide.none,
  );
}
