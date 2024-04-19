import 'package:flutter/material.dart';
import 'package:kutuku/core/utils/styles.dart';
import 'package:kutuku/core/utils/widgets/custom_button.dart';
import 'package:kutuku/core/utils/widgets/icon_text_button.dart';
import 'package:kutuku/features/auth/presentation/views/widgets/input_section.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(
          thickness: .5,
        ),
        CircleAvatar(
          radius: 50,
          foregroundImage: AssetImage(
            'assets/images/onboarding1.jpeg',
          ),
        ),
        SizedBox(
          height: 20,
        ),
        InputSection(
          title: 'Username',
          hintText: 'hintText',
          prefixIicon: Icon(Icons.person),
        ),
        SizedBox(height: 15),
        InputSection(
          title: 'Email',
          hintText: 'hintText',
          prefixIicon: Icon(Icons.email),
        ),
        SizedBox(height: 15),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Account Linked With',
            style: Styles.titleStyle,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        IconTextButton(
            colored: false,
            prefixIcon: 'assets/icons/googleIcon.jpeg',
            text: 'Google'),
        Spacer(),
        CustomButton(text: 'Save Changes'),
        SizedBox(
          height: 50,
        ),
      ],
    );
  }
}
