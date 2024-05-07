import 'package:flutter/material.dart';

class CustomFavoriteIcon extends StatefulWidget {
  const CustomFavoriteIcon({
    super.key,
  });

  @override
  State<CustomFavoriteIcon> createState() => _CustomFavoriteIconState();
}

class _CustomFavoriteIconState extends State<CustomFavoriteIcon> {
  bool redFavoriteIcon = false;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.grey.withOpacity(.4),
      child: IconButton(
        highlightColor: Colors.red.withOpacity(.4),
        icon: Icon(
          redFavoriteIcon ? Icons.favorite : Icons.favorite_border,
          color: redFavoriteIcon ? Colors.red : Colors.white,
        ),
        onPressed: () {
          redFavoriteIcon = !redFavoriteIcon;
          setState(() {});
        },
      ),
    );
  }
}
