import 'package:flutter/material.dart';

import '../../../constants.dart';

OutlineInputBorder buildOutLineInputBorder(
    {Color color = Colors.grey,
    bool enabled = false,
    double padding = kPrimaryPadding}) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(padding),
    borderSide: enabled ? BorderSide(color: color, width: 2) : BorderSide.none,
  );
}
