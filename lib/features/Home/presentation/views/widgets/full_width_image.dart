import 'package:flutter/widgets.dart';

import '../../../../../constants.dart';

class FullWidthImage extends StatelessWidget {
  const FullWidthImage({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - kPrimaryPadding,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
    ;
  }
}
