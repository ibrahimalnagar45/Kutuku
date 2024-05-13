import 'package:flutter/material.dart';
import 'package:kutuku/core/services/firebase_service.dart';
import '../../../../../core/utils/widgets/custom_button.dart';

class AddtionalAuthFunction extends StatelessWidget {
  const AddtionalAuthFunction({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButton(
          colored: false,
          text: '$text With Google',
          prefixIcon: 'assets/icons/google.png',
          onPressed: () {
            FirebaseService().singinWithGoogle();
            // FirebaseService().singinWithGoogle();
          },
        ),
        const SizedBox(
          height: 10,
        ),
        CustomButton(
          colored: false,
          text: '$text With Facbook',
          prefixIcon: 'assets/icons/facebookIcon.jpeg',
          onPressed: () {},
        ),
      ],
    );
  }
}
