import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kutuku/core/utils/app_routes.dart';
import 'package:kutuku/core/utils/styles.dart';
import 'package:kutuku/features/Home/presentation/views/home_view.dart';
import 'package:kutuku/features/Home/presentation/views/widgets/full_width_image.dart';

import '../../../../../constants.dart';

class CatrgoryCard extends StatelessWidget {
  const CatrgoryCard(
      {super.key,
      // required this.image,
      required this.title,
      required this.description,
      required this.isRightText});
  final String title, description;
  final bool isRightText;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return HomeView(
            catrgory: title,
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: Stack(
          children: [
            SizedBox(
              height: 100,
              child: Container(
                color: Colors.blue,
              ),
            ),
            Positioned(
              right: isRightText ? 0 : 150,
              left: isRightText ? 150 : 0,
              bottom: 20,
              child: Column(
                children: [
                  Text(
                    title,
                    style: Styles.titleStyle.copyWith(
                      color: Colors.amber,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  // Text(
                  //   description,
                  //   style: const TextStyle(
                  //     color: kPrimaryColor,
                  //     fontWeight: FontWeight.w500,
                  //   ),
                  // )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
