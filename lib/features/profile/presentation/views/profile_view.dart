import 'package:flutter/material.dart';
import 'package:kutuku/constants.dart';
import 'package:kutuku/features/profile/presentation/views/widgets/profile_view_body.dart';

import 'widgets/profile_view_app_bar.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         
        title: const ProfileViewAppBar(),
      ),
      body: const Padding(
        padding: EdgeInsets.all(kPrimaryPadding),
        child: ProfileViewBody(),
      ),
    );
  }
}
