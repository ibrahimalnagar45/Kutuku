import 'package:flutter/material.dart';
import 'package:kutuku/core/utils/styles.dart';

class PopularSearchContainer extends StatelessWidget {
  const PopularSearchContainer(
      {super.key,
      required this.title,
      required this.descrption,
      required this.image,
      required this.type});
  final String title, descrption, image, type;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.spa,
        // mainAxisSize: MainAxisSize.max,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: SizedBox(
              height: 100,
              width: 90,
              child: Image.asset(
                image,
                fit: BoxFit.fill,
              ),
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: Styles.titleStyle,
              ),
              Text(
                descrption,
                style: Styles.desStyle,
              ),
            ],
          ),
          const Spacer(
            flex: 4,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            decoration: BoxDecoration(
              color: type.toLowerCase() == 'popular'
                  ? Colors.green.withOpacity(.2)
                  : (type.toLowerCase() == 'new'
                      ? Colors.orange.withOpacity(.2)
                      : Colors.red.withOpacity(.2)),
              borderRadius: BorderRadius.circular(12),
            ),
            child: type.toLowerCase() == 'popular'
                ? Text(
                    type,
                    style: Styles.desStyle.copyWith(
                      color: Colors.green,
                    ),
                  )
                : (type.toLowerCase() == 'new'
                    ? Text(
                        type,
                        style: Styles.desStyle.copyWith(
                          color: Colors.orange,
                        ),
                      )
                    : Text(
                        type,
                        style: Styles.desStyle.copyWith(
                          color: Colors.red,
                        ),
                      )),
          ),
        ],
      ),
    );
  }
}
