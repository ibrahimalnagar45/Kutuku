 

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
            if (viewId != 0) {
              viewId = 0;
              setState(() {});

              GoRouter.of(context).push(AppRoutes.kHomeView);
            }
          },
          icon: Icon(
            Icons.home,
            color: viewId == 0 ? kPrimaryColor : Colors.black,
          ),
        ),
        IconButton(
          highlightColor: kPrimaryColor.withOpacity(.5),
          onPressed: () {
            if (viewId != 1) {
              viewId = 1;
              setState(() {});
              GoRouter.of(context).push(AppRoutes.kMyCartView);
            }
          },
          icon: Icon(
            Icons.shopping_cart,
            color: viewId == 1 ? kPrimaryColor : Colors.black,
          ),
        ),
        IconButton(
          highlightColor: kPrimaryColor.withOpacity(.5),
          onPressed: () {
            viewId = 2;
            GoRouter.of(context).push(AppRoutes.kFavoritesView);
            setState(() {});
          },
          icon: Icon(
            Icons.favorite_outline_outlined,
            color: viewId == 2 ? kPrimaryColor : Colors.black,
          ),
        ),
        IconButton(
          highlightColor: kPrimaryColor.withOpacity(.5),
          onPressed: () {
            viewId = 3;
            setState(() {});
          },
          icon: IconButton(
            icon: Icon(
              Icons.person_3_outlined,
              color: viewId == 3 ? kPrimaryColor : Colors.black,
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
