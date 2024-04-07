import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../../../constants.dart';

class BuildDots extends StatelessWidget {
  const BuildDots({super.key, required this.currentIndex});
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 24 + 18,
      child: ListView.builder(
        itemCount: 3,
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
