import 'package:flutter/material.dart'; 

void showSnakeBar({required context, required String message}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.grey,
      content: Text(
        message,
      ),
    ),
  );
}
