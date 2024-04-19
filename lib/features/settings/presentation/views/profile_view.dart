import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kutuku/constants.dart';
import 'package:kutuku/core/utils/app_routes.dart';
import 'package:kutuku/features/settings/presentation/views/widgets/profile_view_body.dart';
import 'widgets/sttings_views_app_bar.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SettingViewsAppBar(
          onPressed: () {
            showMenu(
                context: context,
                position: RelativeRect.fromDirectional(
                  textDirection: TextDirection.rtl,
                  start: 0,
                  top: 70,
                  end: 1,
                  bottom: 0,
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
          },
          title: 'Edit Profile',
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(kPrimaryPadding),
        child: ProfileViewBody(),
      ),
    );
  }
}
