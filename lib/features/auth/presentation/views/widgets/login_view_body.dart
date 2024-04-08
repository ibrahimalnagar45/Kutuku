import 'package:flutter/material.dart';
import 'package:kutuku/features/auth/presentation/views/widgets/input_sections.dart';

import 'view_title.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ViewTitle(
          title: 'Login',
          subTitle: 'Login with your email',
        ),
          SizedBox(
            height: 30,
          ),
        InputSections(),
      ],
    );
  }
}
