import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:kutuku/core/models/prodcut_model.dart';

class CustomFavoriteIcon extends StatefulWidget {
  const CustomFavoriteIcon({
    super.key,
    required this.productModel,
  });
  final ProductModel productModel;
  @override
  State<CustomFavoriteIcon> createState() => _CustomFavoriteIconState();
}

class _CustomFavoriteIconState extends State<CustomFavoriteIcon> {
  var box = Hive.box<ProductModel>('favourites');

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
          if (!box.containsKey(widget.productModel.id)) {
            box.put(widget.productModel.id, widget.productModel);
           
          }

          redFavoriteIcon = !redFavoriteIcon;
          setState(() {});
        },
      ),
    );
  }
}
