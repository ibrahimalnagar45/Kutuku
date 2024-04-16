import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kutuku/core/utils/styles.dart';
import 'package:kutuku/features/Home/presentation/views/widgets/full_width_image.dart';

class CatrgoryCard extends StatelessWidget {
  const CatrgoryCard(
      {super.key,
      required this.image,
      required this.title,
      required this.description,
      required this.isRightText});
  final String image, title, description;
  final bool isRightText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Stack(
        children: [
          SizedBox(
            height: 100,
            child: FullWidthImage(image: image),
          ),
          Positioned(
            right: isRightText ? 0 : 200,
            left: isRightText ? 200 : 0,
            bottom: 20,
            child: Column(
              children: [
                Text(
                  title,
                  style: Styles.titleStyle,
                ),
                Text(
                  description,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
