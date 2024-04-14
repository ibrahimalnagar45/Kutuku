import 'package:flutter/material.dart';
import 'package:kutuku/constants.dart';
import 'package:kutuku/core/utils/styles.dart';

void showSnakeBar({ required context , required String message}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: kSecondaryColor,
      content: Text(
        message,
        style: Styles.desStyle.copyWith(color: Colors.black),
      ),
    ),
  );
}
