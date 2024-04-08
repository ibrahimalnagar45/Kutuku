import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/widgets/custom_button.dart';

class AddtionalAuthFunction extends StatelessWidget {
  const AddtionalAuthFunction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButton(
          colored: false,
          text: 'SingUp With Google',
          prefixIcon: 'assets/icons/1.png',
          onPressed: () {},
        ),
        const SizedBox(
          height: 10,
        ),
        CustomButton(
          colored: false,
          text: 'SingUp With Facbook',
          prefixIcon: 'assets/icons/facebookIcon.jpeg',
          onPressed: () {},
        ),
      ],
    );
  }
}
