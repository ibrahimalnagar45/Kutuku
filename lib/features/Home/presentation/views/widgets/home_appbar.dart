import 'package:flutter/material.dart';
import 'package:kutuku/constants.dart';
import 'package:kutuku/core/utils/styles.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
            vertical: kPrimaryPadding),
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
            const Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hi,Ibrahim',
                  style: Styles.titleStyle,
                ),
                Text(
                  'Lets\'s go shopping',
                  style: Styles.desStyle,
                ),
              ],
            ),
            const Spacer(),
            GestureDetector(
              child:const  Icon(Icons.search),
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
