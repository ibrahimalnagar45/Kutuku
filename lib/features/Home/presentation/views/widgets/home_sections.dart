 import 'package:flutter/material.dart';
 import 'package:kutuku/constants.dart';
import 'package:kutuku/core/utils/styles.dart';

class HomeSections extends StatefulWidget {
  const HomeSections({super.key});

  @override
  State<HomeSections> createState() => _HomeSectionsState();
}

class _HomeSectionsState extends State<HomeSections> {
  bool isSelected1 = true, isSelected2 = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          decoration: BoxDecoration(
            border: isSelected1 == true
                ? const Border(
                    bottom: BorderSide(
                      color: kPrimaryColor,
                      width: 2,
                    ),
                  )
                : null,
          ),
          child: TextButton(
            child: const Text(
              'Home',
              style: Styles.titleStyle,
            ),
            onPressed: () {
              setState(() {
                isSelected2 = false;
                isSelected1 = true;
              });
            },
          ),
        ),
        AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          decoration: BoxDecoration(
            border: isSelected2 == true
                ? const Border(
                    bottom: BorderSide(
                      color: kPrimaryColor,
                      width: 2,
                    ),
                  )
                : null,
          ),
          child: TextButton(
            child: const Text(
              'Category',
              style: Styles.titleStyle,
            ),
            onPressed: () {
              setState(() {
                isSelected1 = false;
                isSelected2 = true;
              });
            },
          ),
        )
      ],
    );
  }
}
