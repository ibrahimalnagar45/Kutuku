import 'package:flutter/material.dart';
import 'package:kutuku/constants.dart';

class HomeViewPersistentFooterButtons extends StatefulWidget {
  const HomeViewPersistentFooterButtons({super.key});

  @override
  State<HomeViewPersistentFooterButtons> createState() =>
      _HomeViewPersistentFooterButtonsState();
}

class _HomeViewPersistentFooterButtonsState
    extends State<HomeViewPersistentFooterButtons> {
  int currentId = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
          highlightColor: kPrimaryColor.withOpacity(.5),
          onPressed: () {
            currentId = 0;
            setState(() {});
          },
          icon: Icon(
            Icons.home,
            color: currentId == 0 ? kPrimaryColor : Colors.grey.withOpacity(.5),
          ),
        ),
        IconButton(
          highlightColor: kPrimaryColor.withOpacity(.5),
          onPressed: () {
            currentId = 1;
            setState(() {});
          },
          icon: Icon(
            Icons.shopping_cart,
            color: currentId == 1 ? kPrimaryColor : Colors.grey.withOpacity(.5),
          ),
        ),
        IconButton(
          highlightColor: kPrimaryColor.withOpacity(.5),
          onPressed: () {
            currentId = 2;
            setState(() {});
          },
          icon: Icon(
            Icons.favorite_outline_outlined,
            color: currentId == 2 ? kPrimaryColor : Colors.grey.withOpacity(.5),
          ),
        ),
        IconButton(
          highlightColor: kPrimaryColor.withOpacity(.5),
          onPressed: () {
            currentId = 3;
            setState(() {});
          },
          icon: Icon(
            Icons.person_3_outlined,
            color: currentId == 3 ? kPrimaryColor : Colors.grey.withOpacity(.5),
          ),
        ),
      ],
    );
  }
}
