import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hive/hive.dart';
import 'package:kutuku/constants.dart';
import 'package:kutuku/core/utils/app_routes.dart';
import 'package:kutuku/core/utils/styles.dart';

import '../../../../auth/data/models/user_model.dart';

class HomeAppBar extends StatefulWidget {
  const HomeAppBar({super.key});

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  var user = Hive.box<UserModel>('user');

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kPrimaryPadding),
      child: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 30,
              foregroundImage: AssetImage(
                'assets/images/onboarding1.jpeg',
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hi,${user.values.first.name}',
                  style: Styles.titleStyle,
                ),
                const Text(
                  'Lets\'s go shopping',
                  style: Styles.desStyle,
                ),
              ],
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                GoRouter.of(context).push(AppRoutes.kSearchView);
              },
              child: const Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
              ),
            )
          ],
        ),
      ),
    );
  }
}
