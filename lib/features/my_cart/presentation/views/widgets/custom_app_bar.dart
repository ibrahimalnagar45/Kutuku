import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

customAppBar(
  context, {
  required String title,
  required IconData icon,
  void Function()? actionOnpressed,
  void Function()? leadingOnPressed,
}) {
  return AppBar(
    automaticallyImplyLeading: false,
    centerTitle: true,
    leading: IconButton(
      icon: const Icon(
        Icons.arrow_back_ios_new_outlined,
      ),
      onPressed: leadingOnPressed,
    ),
    title: Text(
      title,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
    actions: [
      IconButton(
        onPressed: actionOnpressed,
        icon: Icon(
          icon,
        ),
      )
    ],
  );
}
