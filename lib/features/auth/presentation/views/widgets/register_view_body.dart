import 'package:flutter/material.dart';
import 'package:kutuku/core/utils/styles.dart';
import 'package:kutuku/core/utils/widgets/custom_button.dart';
import 'package:kutuku/features/auth/presentation/views/widgets/custom_text_field.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SafeArea(
          child: Text(
            'Create Acount',
            style: Styles.titleStyle,
          ),
        ),
        const Text(
          'start shopping with create an acount',
          style: Styles.desStyle,
        ),
        CustomFormTextFiled(),
      ],
    );
  }
}
