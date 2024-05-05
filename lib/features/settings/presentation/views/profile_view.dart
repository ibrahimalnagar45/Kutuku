import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kutuku/constants.dart';
import 'package:kutuku/core/utils/app_routes.dart';
import 'package:kutuku/features/my_cart/presentation/views/widgets/custom_app_bar.dart';
import 'package:kutuku/features/settings/presentation/views/widgets/profile_view_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context,
        title: 'Edit Profile',
        icon: Icons.menu,
        actionOnpressed: () {
          showProfileMenu(context);
        },
        leadingOnPressed: () => Navigator.pop(context),
      ),
      body: const Padding(
        padding: EdgeInsets.all(kPrimaryPadding),
        child: ProfileViewBody(
          userName: 'ibrahim kamal alnagar',
          emial: 'example@gmail.com',
          image: 'assets/images/onboarding1.jpeg',
        ),
      ),
    );
  }

  void showProfileMenu(BuildContext context) {
    showMenu(
        context: context,
        position: RelativeRect.fromDirectional(
          textDirection: TextDirection.rtl,
          start: 0,
          top: 70,
          end: 1,
          bottom: 0,
        ),
        useRootNavigator: true,
        popUpAnimationStyle: AnimationStyle(
          curve: Curves.bounceIn,
          duration: const Duration(milliseconds: 250),
          reverseCurve: Curves.bounceIn,
          reverseDuration: const Duration(milliseconds: 250),
        ),
        items: [
          PopupMenuItem(
            child: GestureDetector(
              onTap: () {
                GoRouter.of(context).push(AppRoutes.kSettingView);
              },
              child: const Row(
                children: [
                  Icon(Icons.settings),
                  SizedBox(
                    width: 15,
                  ),
                  Text('Settings'),
                ],
              ),
            ),
          ),
        ]);
  }
}
