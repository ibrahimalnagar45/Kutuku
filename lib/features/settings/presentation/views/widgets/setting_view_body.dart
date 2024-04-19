import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kutuku/core/utils/app_routes.dart';
import 'package:kutuku/features/settings/presentation/views/widgets/setting_item.dart';

class SettingsViewBody extends StatelessWidget {
  const SettingsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
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
          icon: const Icon(Icons.security_rounded),
          title: 'Security',
          onPressed: () {
            GoRouter.of(context).push(AppRoutes.kProfileView);
          },
        ),
        SettingItem(
          icon: const Icon(Icons.map),
          title: 'Language ',
          onPressed: () {
            GoRouter.of(context).push(AppRoutes.kProfileView);
          },
        ),
      ],
    );
  }
}
