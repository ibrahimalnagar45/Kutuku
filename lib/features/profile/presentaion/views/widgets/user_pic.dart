import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    super.key,
    this.image = 'assets/images/no_image.jpg',
  });
  final String image;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 90,
      backgroundColor: const Color.fromARGB(255, 116, 75, 206),
      child: CircleAvatar(
        radius: 87,
        backgroundImage: AssetImage(
          image,
        ),
      ),
    );
  }
}