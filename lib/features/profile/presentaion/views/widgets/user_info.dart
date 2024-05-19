
import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({
    super.key,
    this.userName = 'UserName',
    this.email = '@gmail.com',
  });
  final String userName, email;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          userName,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          email,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color.fromARGB(255, 116, 75, 206),
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}

