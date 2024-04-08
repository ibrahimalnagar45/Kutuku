import 'package:flutter/material.dart';
import 'package:kutuku/constants.dart';
import 'package:kutuku/features/auth/presentation/views/widgets/verification_view_body.dart';

import 'widgets/verification_view_appbar.dart';

class VerificationView extends StatelessWidget {
  const VerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: verificationViewAppBar(),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: kPrimaryPadding),
        child: VerificationViewBody(),
      ),
    );
  }
}
