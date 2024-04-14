import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kutuku/constants.dart';
import 'package:kutuku/core/services/firebase_service.dart';
import 'package:kutuku/core/utils/app_routes.dart';
import 'package:kutuku/core/utils/styles.dart';
import 'package:kutuku/core/utils/widgets/custom_button.dart';
import 'package:kutuku/features/auth/presentation/views/widgets/forget_password_sheet.dart';
import 'addtional_auth_function.dart';
import 'input_section.dart';
import 'view_title.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  GlobalKey<FormState> globalFormKey = GlobalKey();

  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;

  String? email, password, name;

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
          // const LoginInputSections(),
          loginInputsTextFeilds(),
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
                GoRouter.of(context).push(AppRoutes.kHome);
              }
              // onPressed: () {
              //   globalFormKey.currentState!.save();
              //   if (globalFormKey.currentState!.validate()) {
              //     setState(() {
              //       _autovalidateMode = AutovalidateMode.always;
              //     });

              //     FirebaseService().singinWithEmailAndPasswordP(
              //       email: email,
              //       password: password,
              //       context: context,
              //     );
              //     GoRouter.of(context).push(AppRoutes.kHome);
              //   }
              // },
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

  Column loginInputsTextFeilds() {
    return Column(
      children: [
        InputSection(
          onSaved: (value) {
            email = value;
          },
          keyboardType: TextInputType.emailAddress,
          prefixIicon: const Icon(Icons.email_outlined),
          title: 'Email or Phone Number',
          hintText: 'Enter your email or Phome Number',

          validator: (data) {
            String pattern =
                r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
            RegExp regex = RegExp(pattern);

            return data!.isEmpty
                ? "required feild"
                : (!regex.hasMatch(data) ? 'Enter Valid Email' : null);
          },
          // validator: (value) => value ?? 'please enter your name',
        ),
        InputSection(
          onSaved: (value) {
            password = value;
          },
          keyboardType: TextInputType.visiblePassword,
          prefixIicon: const Icon(Icons.password),
          withSuffixicon: true,
          title: 'Password',
          isObscure: true,
          hintText: 'Create your Password',
          validator: (data) {
            return data!.isEmpty
                ? "required feild"
                : (data.length < 8
                    ? 'the password must be more than 8 letters '
                    : (!data.contains('@') &&
                            !data.contains('*') &&
                            !data.contains('_') &&
                            !data.contains('#') &&
                            !data.contains(r'$')
                        ? 'weak password try add _ or special sing as # or *'
                        : null));
          },
        )
      ],
    );
  }
}
