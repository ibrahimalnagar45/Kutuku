import 'package:flutter/material.dart';

import 'input_section.dart';

class RegisterInputSections extends StatelessWidget {
  const RegisterInputSections(
      {super.key, this.emailOnSaved, this.passwordOnSaved});
  final Function(String?)? emailOnSaved, passwordOnSaved;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InputSection(
            passowrdField: false,
            prefixIicon: const Icon(Icons.person),
            title: 'Username',
            hintText: 'Create your name',
            validator: (data) {
              if (data!.isEmpty || data == "") {
                return "required feild";
              } else if (data.length < 3) {
                return "the name must be more than 3 letters";
              } else {
                return null;
              }
            }),
        InputSection(
          passowrdField: false,
          onSaved: emailOnSaved,
          prefixIicon: const Icon(Icons.email_outlined),
          title: 'Email or Phone Number',
          hintText: 'Enter your email or Phome Number',

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
          // validator: (value) => value ?? 'please enter your name',
        ),
        InputSection(
          passowrdField: true,
          onSaved: passwordOnSaved,
          prefixIicon: const Icon(Icons.password),
          title: 'Password',
          isObscure: true,
          hintText: 'Create your Password',
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
        )
      ],
    );
  }
}