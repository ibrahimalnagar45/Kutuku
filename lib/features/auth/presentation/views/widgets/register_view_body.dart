import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:go_router/go_router.dart';
import 'package:kutuku/core/services/firebase_service.dart';
import 'package:kutuku/core/utils/app_routes.dart';
import 'package:kutuku/core/utils/styles.dart';
import 'package:kutuku/core/utils/widgets/custom_button.dart';
import 'package:kutuku/features/auth/presentation/manager/cubits/Auth_cubit/auth_cubit.dart';
import 'package:kutuku/features/auth/presentation/views/widgets/register_inputs_sections.dart';
import 'package:kutuku/features/auth/presentation/views/widgets/addtional_auth_function.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../../../../../constants.dart';
import 'view_title.dart';

class RegisterViewBody extends StatefulWidget {
  const RegisterViewBody({super.key});

  @override
  State<RegisterViewBody> createState() => _RegisterViewBodyState();
}

class _RegisterViewBodyState extends State<RegisterViewBody> {
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
              title: 'Create Acount',
              subTitle: 'Start Shopping with an account'),
          const SizedBox(
            height: 30,
          ),
          RegisterInputSections(
            emailOnSaved: (data) {
              email = data;
            },
            passwordOnSaved: (data) {
              password = data;
            },
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .03,
          ),
          BlocBuilder<AuthCubit, AuthState>(
            builder: (context, state) {
              if (state is AuthSingupLoading) {
                return Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: kPrimaryColor,
                  ),
                  child: const Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              } else if (state is AuthSingupFailure) {
                return Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: kPrimaryColor,
                  ),
                  child: const Center(
                    child: Text('Error creating account'),
                  ),
                );
              }

              return CustomButton(
                text: 'Create Your Account',
                onPressed: () {
                  globalFormKey.currentState!.save();
                  if (globalFormKey.currentState!.validate()) {
                    setState(() {
                      _autovalidateMode = AutovalidateMode.always;
                    });

                    BlocProvider.of<AuthCubit>(context)
                        .signupWithEmailAndPassword(
                      email: email,
                      password: password,
                      context: context,
                    );

                    // GoRouter.of(context).push(AppRoutes.kLoginView);
                  }
                },
              );
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
          const AddtionalAuthFunction(
            text: 'Sing Up',
          ),
          const SizedBox(
            height: 10,
          ),
          const Expanded(
            child: Center(
              child: Text(
                'Already have an email !',
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
              GoRouter.of(context).push(AppRoutes.kLoginView);
            },
          ),
        ],
      ),
    );
  }

  // Column registerInputsTextFeilds() {
  //   return Column(
  //     children: [
  //       InputSection(
  //           keyboardType: TextInputType.text,
  //           prefixIicon: const Icon(Icons.person),
  //           title: 'Username',
  //           hintText: 'Create your name',
  //           validator: (data) {
  //             return (data!.isEmpty)
  //                 ? "required feild"
  //                 : (data.length < 3
  //                     ? 'the name must be more than 3 letters'
  //                     : null);
  //           }),
  //       InputSection(
  //         onSaved: (value) {
  //           email = value;
  //         },
  //         keyboardType: TextInputType.emailAddress,
  //         prefixIicon: const Icon(Icons.email_outlined),
  //         title: 'Email or Phone Number',
  //         hintText: 'Enter your email or Phome Number',

  //         validator: (data) {
  //           String pattern =
  //               r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  //           RegExp regex = RegExp(pattern);

  //           return data!.isEmpty
  //               ? "required feild"
  //               : (!regex.hasMatch(data) ? 'Enter Valid Email' : null);
  //         },
  //         // validator: (value) => value ?? 'please enter your name',
  //       ),
  //       InputSection(
  //         onSaved: (value) {
  //           password = value;
  //         },
  //         keyboardType: TextInputType.visiblePassword,
  //         prefixIicon: const Icon(Icons.password),
  //         withSuffixicon: true,
  //         title: 'Password',
  //         isObscure: true,
  //         hintText: 'Create your Password',
  //         validator: (data) {
  //           return data!.isEmpty
  //               ? "required feild"
  //               : (data.length < 8
  //                   ? 'the password must be more than 8 letters '
  //                   : (!data.contains('@') &&
  //                           !data.contains('*') &&
  //                           !data.contains('_') &&
  //                           !data.contains('#') &&
  //                           !data.contains(r'$')
  //                       ? 'weak password try add _ or special sing as # or *'
  //                       : null));
  //         },
  //       )
  //     ],
  //   );
  // }
}
