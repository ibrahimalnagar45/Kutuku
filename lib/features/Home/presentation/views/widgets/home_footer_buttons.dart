import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kutuku/constants.dart';
import 'package:kutuku/core/utils/app_routes.dart';

class PersistentFooterButtons extends StatefulWidget {
  const PersistentFooterButtons({super.key});
  @override
  State<PersistentFooterButtons> createState() =>
      _PersistentFooterButtonsState();
}

int? currentId;

class _PersistentFooterButtonsState extends State<PersistentFooterButtons> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          highlightColor: kPrimaryColor.withOpacity(.5),
          onPressed: () {
            if (currentId != 0) {
              currentId = 0;
              setState(() {});

              GoRouter.of(context).push(AppRoutes.kHomeView);
            }
          },
          icon: Icon(
            Icons.home,
            color: currentId == 0 ? kPrimaryColor : Colors.black,
          ),
        ),
        IconButton(
          highlightColor: kPrimaryColor.withOpacity(.5),
          onPressed: () {
            if (currentId != 1) {
              currentId = 1;
              setState(() {});
              GoRouter.of(context).push(AppRoutes.kMyCartView);
            }
          },
          icon: Icon(
            Icons.shopping_cart,
            color: currentId == 1 ? kPrimaryColor : Colors.black,
          ),
        ),
        IconButton(
          highlightColor: kPrimaryColor.withOpacity(.5),
          onPressed: () {
            currentId = 2;
            setState(() {});
          },
          icon: Icon(
            Icons.favorite_outline_outlined,
            color: currentId == 2 ? kPrimaryColor : Colors.black,
          ),
        ),
        IconButton(
          highlightColor: kPrimaryColor.withOpacity(.5),
          onPressed: () {
            currentId = 3;
            setState(() {});
          },
          icon: IconButton(
            icon: Icon(
              Icons.person_3_outlined,
              color: currentId == 3 ? kPrimaryColor : Colors.black,
            ),
            onPressed: () {
              GoRouter.of(context).push(AppRoutes.kProfileView);
            },
          ),
        ),
      ],
    );
  }
}
