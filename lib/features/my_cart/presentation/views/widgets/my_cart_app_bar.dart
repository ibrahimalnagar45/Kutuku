
  import 'package:flutter/material.dart';

AppBar myCarAppBar() {
    return AppBar(
      centerTitle: true,
      leading: const Icon(
        Icons.arrow_back_ios,
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

