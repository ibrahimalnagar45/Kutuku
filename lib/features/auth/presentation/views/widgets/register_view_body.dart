import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kutuku/core/utils/styles.dart';
import 'package:kutuku/core/utils/widgets/custom_button.dart';
import 'package:kutuku/features/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:kutuku/features/auth/presentation/views/widgets/input_section.dart';

class RegisterViewBody extends StatefulWidget {
  const RegisterViewBody({super.key});

  @override
  State<RegisterViewBody> createState() => _RegisterViewBodyState();
}

class _RegisterViewBodyState extends State<RegisterViewBody> {
  final GlobalKey<FormState> _globalKey = GlobalKey();
  final AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _globalKey,
      autovalidateMode: _autovalidateMode,
      child: ListView(
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
          const SizedBox(
            height: 40,
          ),
          InputSection(
            prefixIicon: const Icon(Icons.person),
            title: 'Username',
            hintText: 'Create your name',
            validator: (value) => value ?? 'please enter your name',
          ),
          InputSection(
            prefixIicon: const Icon(Icons.email_outlined),
            title: 'Email or Phone Number',
            hintText: 'Enter your email or Phome Number',
            validator: (value) => value ?? 'please enter your name',
          ),
          InputSection(
            prefixIicon: const Icon(Icons.password),
            withSuffixicon: true,
            title: 'Password',
            isObscure: true,
            hintText: 'Create your Password',
            validator: (value) => value ?? 'please enter your name',
          ),
          const CustomButton(text: 'Create Your Account'),
          Expanded(
            child: Center(
              child: Text(
                'Or using Other Methods',
                style: Styles.desStyle.copyWith(color: Colors.grey),
              ),
            ),
          ),
          CustomButton(
              colored: false,
              text: 'SingUp With Google',
              // prefixIcon: SvgPicture.asset('assets/images/google.svg'),
              onPressed: () {}),
        ],
      ),
    );
  }
}
