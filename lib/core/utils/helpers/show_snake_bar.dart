import 'package:flutter/material.dart';
import 'package:kutuku/core/utils/styles.dart';

void showSnakeBar({context, required String message}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message,
        style: Styles.desStyle.copyWith(color: Colors.black),
      ),
    ),
  );
}
