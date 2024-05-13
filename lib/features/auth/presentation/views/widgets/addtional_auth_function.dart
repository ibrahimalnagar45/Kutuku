import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kutuku/core/services/firebase_service.dart';
import 'package:kutuku/core/utils/app_routes.dart';
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
          onPressed: () async {
            try {
              await FirebaseService().singinWithGoogle();
              GoRouter.of(context).push(AppRoutes.kHomeView);
            } on Exception catch (e) {
              log(e.toString());
              // TODO
            }

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
