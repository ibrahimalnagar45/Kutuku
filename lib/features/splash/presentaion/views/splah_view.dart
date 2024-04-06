import 'package:flutter/material.dart';
import 'package:kutuku/constants.dart';
import 'package:kutuku/features/splash/presentaion/views/widgets/splach_view_body.dart';

class SplahView extends StatelessWidget {
  const SplahView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      body: SplahViewBody(),
    );
  }
}
