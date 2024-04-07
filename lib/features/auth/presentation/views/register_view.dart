import 'package:flutter/material.dart';
import 'package:kutuku/constants.dart';
import 'package:kutuku/features/auth/presentation/views/widgets/register_view_body.dart';

class Registerview extends StatelessWidget {
  const Registerview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(
        horizontal: kPrimaryPadding,
      ),
      child: RegisterViewBody(),
    ));
  }
}
