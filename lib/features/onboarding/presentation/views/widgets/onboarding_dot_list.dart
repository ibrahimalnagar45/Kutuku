import 'package:flutter/material.dart';

class DotsList extends StatelessWidget {
  const DotsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const Padding(
              padding:   EdgeInsets.symmetric(horizontal: 3.0),
              child:   CircleAvatar(
                radius: 4,
                backgroundColor: Colors.grey,
              ),
            ));
  }
}
