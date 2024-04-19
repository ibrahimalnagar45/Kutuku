import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kutuku/core/utils/app_routes.dart';
import 'package:kutuku/features/settings/presentation/views/widgets/setting_item.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../auth/presentation/views/widgets/forget_password_sheet.dart';

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
            showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return const ForgetPasswordSheet();
                });
          },
        ),
        SettingItem(
          icon: const Icon(Icons.notifications_outlined),
          title: 'Notification',
          onPressed: () {},
        ),
        SettingItem(
          icon: const Icon(Icons.security_outlined),
          title: 'Security',
          onPressed: () {},
        ),
        SettingItem(
          discreption: 'English',
          icon: const Icon(Icons.map),
          title: 'Language ',
          onPressed: () {},
        ),
        const Text(
          'Preferencess ',
          style: Styles.titleStyle,
        ),
        SettingItem(
          icon: const Icon(Icons.shield_outlined),
          title: 'Legal and Policies ',
          onPressed: () {},
        ),
        SettingItem(
          icon: const Icon(Icons.contact_support_outlined),
          title: 'Help and support',
          onPressed: () {},
        ),
        SettingItem(
          color: Colors.red,
          icon: const Icon(
            Icons.logout_rounded,
            color: Colors.red,
          ),
          title: 'Log Out',
          onPressed: () {},
        ),
      ],
    );
  }
}
