import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kutuku/constants.dart';
import 'package:kutuku/core/services/firebase_service.dart';
import 'package:kutuku/core/utils/app_routes.dart';
import 'package:kutuku/core/utils/helpers/show_snake_bar.dart';
import 'package:kutuku/core/utils/styles.dart';
import 'package:kutuku/core/utils/widgets/custom_button.dart';
import 'package:kutuku/features/auth/presentation/views/widgets/forget_password_sheet.dart';
import 'package:kutuku/features/auth/presentation/views/widgets/login_inputs_section.dart';
import 'addtional_auth_function.dart';
import 'view_title.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  GlobalKey<FormState> globalFormKey = GlobalKey();

  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;

  String? email, password;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: globalFormKey,
      autovalidateMode: _autovalidateMode,
      child: ListView(
        children: [
          const ViewTitle(
            title: 'Login Account',
            subTitle: 'Login with your email',
          ),
          const SizedBox(
            height: 30,
          ),
          LoginInputSections(
            emailOnSaved: (data) {
              email = data;
            },
            passwordOnSaved: (data) {
              password = data;
            },
          ),
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
          CustomButton(
            text: 'Login',
            onPressed: () {
              globalFormKey.currentState!.save();
              if (globalFormKey.currentState!.validate()) {
                setState(() {
                  _autovalidateMode = AutovalidateMode.always;
                });

                try {
                  FirebaseService().singinWithEmailAndPassword(
                    email: email,
                    password: password,
                    context: context,
                  );
                  GoRouter.of(context).push(AppRoutes.kHomeView);
                } on Exception catch (e) {
                  showSnakeBar(context: context, message: e.toString());
                }
              }
            },
          ),
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
      ),
    );
  }
}
