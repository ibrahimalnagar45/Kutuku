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
    return Stack(
      children: [
        FullWidthImage(image: image),
        Positioned(
          right: isRightText ? 0 : 200,
          left: isRightText ? 200 : 0,
          bottom: 80,
          child: Column(
            children: [
              Text(
                title,
                style: Styles.titleStyle,
              ),
              Text(description)
            ],
          ),
        )
      ],
    );
  }
}
