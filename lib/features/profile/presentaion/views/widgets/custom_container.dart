
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.icon, required this.title});
  final Icon icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: SizedBox(
        height: 50,
        child: Row(
          children: [
            icon,
            const Spacer(
              flex: 1,
            ),
            Text(
              title,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Color.fromARGB(255, 116, 75, 206)),
            ),
            const Spacer(
              flex: 6,
            ),
            const Icon(
              Icons.arrow_forward_ios_outlined,
              color: Color.fromARGB(255, 116, 75, 206),
            ),
          ],
        ),
      ),
    );
  }
}