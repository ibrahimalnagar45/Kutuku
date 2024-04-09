import 'package:flutter/material.dart';
import 'package:kutuku/constants.dart';
import 'package:kutuku/core/utils/styles.dart';
import 'package:kutuku/core/utils/widgets/custom_button.dart';
import 'package:kutuku/features/auth/presentation/views/widgets/custom_verification_model_bottom_sheet.dart';
import 'package:kutuku/features/auth/presentation/views/widgets/forget_password_sheet.dart';

import 'addtional_auth_function.dart';
import 'login_inputs_section.dart';
import 'view_title.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const ViewTitle(
          title: 'Login Account',
          subTitle: 'Login with your email',
        ),
        const SizedBox(
          height: 30,
        ),
        const LoginInputSections(),
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: () {
              showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (context) {
                    return const ForgetPasswordSheet();
                  });
            },
            child: const Text(
              'Forgot Password?',
              style: TextStyle(color: kPrimaryColor),
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        const CustomButton(text: 'Login'),
        const SizedBox(
          height: 15,
        ),
        const Align(
          alignment: Alignment.center,
          child: Text(
            'or using other methods',
            style: Styles.desStyle,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const AddtionalAuthFunction(
          text: 'LogIn',
        ),
      ],
    );
  }
}
