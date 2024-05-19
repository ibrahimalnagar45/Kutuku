import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_circular_indecator.dart';
import '../../../../services/firebase_service.dart';
import '../../manager/cubits/Auth_cubit/auth_cubit.dart';
import '../login_view.dart';
import 'custom_text_form_field.dart';
import 'login_view_body.dart';
import 'signin_with_google_button.dart'; 
class RegisterViewBody extends StatefulWidget {
  const RegisterViewBody({super.key});

  @override
  State<RegisterViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<RegisterViewBody> {
  GlobalKey<FormState> globalFormKey = GlobalKey();

  String? email, password;
  @override
  @override
  Widget build(BuildContext context) {
    return Form(
      key: globalFormKey,
      child: ListView(
        children: [
          const SizedBox(
            height: 70,
          ),
          const Text(
            'Ecommerce',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromARGB(255, 67, 29, 148),
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 15,
          ),
          CustomTextFormField(
            hintText: 'Enter Your UserName',
            validator: (data) {
              return data == '' ? 'required field' : null;
            },
          ),
          const SizedBox(
            height: 15,
          ),
          CustomTextFormField(
            hintText: 'Enter Your Email',
            validator: (data) {
              if (data!.isEmpty || data == "") {
                return "required feild";
              }
              String pattern =
                  r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
              RegExp regex = RegExp(pattern);
              if (!regex.hasMatch(data)) {
                return 'Enter Valid Email';
              } else {
                return null;
              }
            },
          ),
          const SizedBox(
            height: 15,
          ),
          CustomTextFormField(
            isPassword: true,
            hintText: 'Enter Your Password',
            validator: (data) {
              if (data!.isEmpty) {
                return "required feild";
              } else if (data.length < 8) {
                return "the password must be more than 8 letters ";
              } else if (!data.contains('@') &&
                  !data.contains('*') &&
                  !data.contains('_') &&
                  !data.contains('#') &&
                  !data.contains(r'$')) {
                return "weak password the password must contain _ or special sing as # or * ";
              } else {
                return null;
              }
              // validator: (value) => value ?? 'please enter your name',
            },
          ),
          const SizedBox(
            height: 15,
          ),
          BlocBuilder<AuthCubit, AuthState>(
            builder: (context, state) {
              if (state is AuthLoginLoading) {
                return const CustomCircularProgressIndicator();
              } else if (state is AuthLoginFailure) {
                return Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color.fromARGB(255, 67, 29, 148),
                  ),
                  child: const Center(
                    child: Text(
                      'Login Failed',
                    ),
                  ),
                );
              } else {
                return Container(
                  height: 65,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: IconButton(
                    onPressed: () {
                      if (globalFormKey.currentState!.validate()) {
                        FirebaseService().registerUsingEmailAndPassword(
                          email: email,
                          password: password,
                          context: context,
                        );
                      }
                    },
                    icon: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color.fromARGB(255, 104, 59, 202),
                      ),
                      child: const Center(
                        child: Text(
                          'Sing Up',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                );
              }
            },
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            children: [
              Expanded(
                child: Divider(
                  thickness: 1,
                  color: Color.fromARGB(255, 67, 29, 148),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.0),
                child: Text(
                  'or continue with',
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(
                child: Divider(
                  thickness: 1,
                  color: Color.fromARGB(255, 67, 29, 148),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          const SignInWithGoogleButton(),
          const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Already have an account? ',
              ),
              CustomAuthTextButton(
                title: 'SignIn',
                toNavigatToWidget: StoreLoginView(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
