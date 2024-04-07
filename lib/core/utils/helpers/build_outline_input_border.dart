  import 'package:flutter/material.dart';

import '../../../constants.dart';

OutlineInputBorder BuildOutLineInputBorder({Color color = Colors.grey}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(kPrimaryPadding),
      borderSide: BorderSide(color: color),
    );
  }
