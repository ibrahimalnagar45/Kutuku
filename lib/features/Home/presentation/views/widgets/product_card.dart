import 'package:flutter/material.dart';
import 'package:kutuku/constants.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: SizedBox(
        height: 200,
        // width: 50,
        child: AspectRatio(
          aspectRatio: .64 / .8,
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'assets/images/onboarding1.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    right: 10,
                    top: 15,
                    child: CircleAvatar(
                      backgroundColor: Colors.grey.withOpacity(.8),
                      child: IconButton(
                        highlightColor: kPrimaryColor,
                        icon: const Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
              // const Text('THe Mirric'),
            ],
          ),
        ),
      ),
    );
  }
}
