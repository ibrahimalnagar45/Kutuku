import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

AppBar myCartViewAppBar(context ) {
  return AppBar(
    centerTitle: true,
    leading: IconButton(
      icon: const Icon(
        Icons.arrow_back_ios,
      ),
      onPressed: () {
        GoRouter.of(context).pop();
      },
    ),
    title: const Text(
      'My Cart',
      style: TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.shopping_bag_outlined,
        ),
      )
    ],
  );
}
