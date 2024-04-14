import 'package:flutter/material.dart';
import '../../../constants.dart';

class BuildDots extends StatelessWidget {
  const BuildDots(
      {super.key, required this.currentIndex, required this.itemcount});
  final int currentIndex;
  final int itemcount;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 14.0 * itemcount,
      child: ListView.builder(
        itemCount: itemcount,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 3.0),
          child: AnimatedContainer(
            duration: const Duration(seconds: 1),
            child: CircleAvatar(
              radius: 4,
              backgroundColor:
                  currentIndex == index ? kPrimaryColor : Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}

