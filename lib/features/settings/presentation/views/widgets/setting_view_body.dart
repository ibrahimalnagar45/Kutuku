import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kutuku/core/utils/app_routes.dart';
import 'package:kutuku/features/settings/presentation/views/widgets/setting_item.dart';

import '../../../../../core/utils/styles.dart';

class SettingsViewBody extends StatelessWidget {
  const SettingsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Text(
          'General ',
          style: Styles.titleStyle,
        ),
        SettingItem(
          icon: const Icon(Icons.person_outline),
          title: 'Edit Profile',
          onPressed: () {
            GoRouter.of(context).push(AppRoutes.kProfileView);
          },
        ),
        SettingItem(
          icon: const Icon(Icons.lock_outline),
          title: 'change Password',
          onPressed: () {
            GoRouter.of(context).push(AppRoutes.kProfileView);
          },
        ),
        SettingItem(
          icon: const Icon(Icons.notifications_outlined),
          title: 'Notification',
          onPressed: () {
            GoRouter.of(context).push(AppRoutes.kProfileView);
          },
        ),
        SettingItem(
          icon: const Icon(Icons.security_outlined),
          title: 'Security',
          onPressed: () {
            GoRouter.of(context).push(AppRoutes.kProfileView);
          },
        ),
        SettingItem(
          discreption: 'English',
          icon: const Icon(Icons.map),
          title: 'Language ',
          onPressed: () {
            GoRouter.of(context).push(AppRoutes.kProfileView);
          },
        ),
        const Text(
          'Preferencess ',
          style: Styles.titleStyle,
        ),
        SettingItem(
          icon: const Icon(Icons.shield_outlined),
          title: 'Legal and Policies ',
          onPressed: () {
            GoRouter.of(context).push(AppRoutes.kProfileView);
          },
        ),
        SettingItem(
          icon: const Icon(Icons.contact_support_outlined),
          title: 'Help and support',
          onPressed: () {
            GoRouter.of(context).push(AppRoutes.kProfileView);
          },
        ),
        SettingItem(
          color: Colors.red,
          icon: const Icon(
            Icons.logout_rounded,
            color: Colors.red,
          ),
          title: 'Log Out',
          onPressed: () {
            GoRouter.of(context).push(AppRoutes.kProfileView);
          },
        ),
      ],
    );
  }
}
