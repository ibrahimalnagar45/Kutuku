import 'package:flutter/material.dart';
import 'package:kutuku/constants.dart';

import '../../../../../core/utils/helpers/build_outline_input_border.dart';

class CustomFormTextFiled extends StatelessWidget {
  const CustomFormTextFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          border: BuildOutLineInputBorder(),
          disabledBorder: BuildOutLineInputBorder(),
          enabledBorder: BuildOutLineInputBorder(color: kPrimaryColor)),
    );
  }
}
