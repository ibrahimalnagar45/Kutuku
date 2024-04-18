import 'package:flutter/material.dart';
import 'package:kutuku/constants.dart';
import 'package:kutuku/core/utils/styles.dart';

class LastSearchContainer extends StatelessWidget {
  const LastSearchContainer({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      margin: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        // color: Colors.grey.withOpacity(.3),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.grey.withOpacity(.2),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            text,
            style: Styles.desStyle,
          ),
          const SizedBox(
            width: 10,
          ),
          Icon(
            Icons.close,
            color: Colors.grey.withOpacity(.5),
            size: 20,
          )
        ],
      ),
    );
  }
}
