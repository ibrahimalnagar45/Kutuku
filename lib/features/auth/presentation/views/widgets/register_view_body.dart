import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:kutuku/core/utils/routes.dart';
import 'package:kutuku/core/utils/styles.dart';
import 'package:kutuku/core/utils/widgets/custom_button.dart';
import 'package:kutuku/features/auth/presentation/views/widgets/addtional_auth_function.dart';
import 'package:kutuku/features/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:kutuku/features/auth/presentation/views/widgets/input_section.dart';

import 'input_sections.dart';
import 'view_title.dart';

class RegisterViewBody extends StatefulWidget {
  const RegisterViewBody({super.key});

  @override
  State<RegisterViewBody> createState() => _RegisterViewBodyState();
}

class _RegisterViewBodyState extends State<RegisterViewBody> {
  final GlobalKey<FormState> _globalFormKey = GlobalKey();
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _globalFormKey,
      autovalidateMode: _autovalidateMode,
      child: ListView(
        children: [
          const ViewTitle(
              title: 'Create Acount',
              subTitle: 'Start Shopping with an account'),
          const SizedBox(
            height: 30,
          ),
          const InputSections(),
          const SizedBox(
            height: 30,
          ),
          CustomButton(
            text: 'Create Your Account',
            onPressed: () {
              if (_globalFormKey.currentState!.validate()) {
                setState(() {
                  _autovalidateMode = AutovalidateMode.always;
                });
              } else {
                setState(() {
                  _autovalidateMode = AutovalidateMode.disabled;
                });
              }
            },
          ),
          const SizedBox(
            height: 10,
          ),
          const Expanded(
            child: Center(
              child: Text(
                'Or using Other Methods',
                style: Styles.desStyle,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const AddtionalAuthFunction(),
          const SizedBox(
            height: 10,
          ),
          const Expanded(
            child: Center(
              child: Text(
                'Already Have An Email !',
                style: Styles.desStyle,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          CustomButton(
            text: 'LogIn',
            onPressed: () {
              GoRouter.of(context).push(AppRoutes.kLogin);
            },
          ),
        ],
      ),
    );
  }
}
