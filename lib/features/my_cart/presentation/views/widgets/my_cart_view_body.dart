import 'package:flutter/material.dart';
 import 'package:kutuku/features/my_cart/presentation/views/widgets/my_cart_item_list.dart';

import 'custom_app_bar.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        customAppBar(
          context,
          title: 'My Cart',
          icon: Icons.shopping_bag_outlined,
          leadingOnPressed: () => Navigator.pop(context),
        ),
        Expanded(child: const MyCartItemsList()),
      ],
    );
  }
}
