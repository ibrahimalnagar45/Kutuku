import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kutuku/constants.dart';
import 'package:kutuku/core/utils/app_routes.dart';
import 'package:kutuku/core/utils/styles.dart';

class HomeSections extends StatefulWidget {
  const HomeSections({super.key});

  @override
  State<HomeSections> createState() => _HomeSectionsState();
}

 int? currentIndex;

class _HomeSectionsState extends State<HomeSections> {
  @override
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          decoration: BoxDecoration(
            border: currentIndex == 0
                ? const Border(
                    bottom: BorderSide(
                      color: kPrimaryColor,
                      width: 2,
                    ),
                  )
                : null,
          ),
          child: TextButton(
            child: const Text(
              'Home',
              style: Styles.titleStyle,
            ),
            onPressed: () {
              if (currentIndex != 0) {
                currentIndex = 0;
                setState(() {});
                GoRouter.of(context).push(
                  AppRoutes.kHomeView,
                );
              }

               
            },
          ),
        ),
        AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          decoration: BoxDecoration(
            border: currentIndex == 1
                ? const Border(
                    bottom: BorderSide(
                      color: kPrimaryColor,
                      width: 2,
                    ),
                  )
                : null,
          ),
          child: TextButton(
            child: const Text(
              'Category',
              style: Styles.titleStyle,
            ),
            onPressed: () {
              if (currentIndex != 1) {
                currentIndex = 1;
                setState(() {});
                GoRouter.of(context).push(
                  AppRoutes.kHomeCategoryView,
                );
                
              }

              
            },
          ),
        )
      ],
    );
  }
}
