import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:kutuku/constants.dart';
import 'package:kutuku/core/utils/styles.dart';
import 'package:kutuku/features/my_cart/presentation/views/widgets/my_cart_item.dart';

import '../../../../../core/models/prodcut_model.dart';

class BuildItemsList extends StatefulWidget {
  const BuildItemsList({super.key, required this.products});
  final List<ProductModel> products;
  @override
  State<BuildItemsList> createState() => _BuildItemsListState();
}

class _BuildItemsListState extends State<BuildItemsList> {
  @override
  @override
  bool showAllPressed = false;
  bool showSelectAll = false;
  bool selectAll = false;
  @override
  Widget build(BuildContext context) {
    if (widget.products.isEmpty) {
      return const Center(
        child: Text('No items yet'),
      );
    }
    return showSelectAll
        ? Column(
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    'Select All ',
                    style: Styles.desStyle,
                  ),
                  GestureDetector(
                    onTap: () {
                      selectAll = !selectAll;
                      setState(() {});
                    },
                    child: selectAll
                        ? Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: kPrimaryColor),
                            ),
                            child: const Icon(
                              Icons.check,
                              color: Colors.white,
                              size: 15,
                            ),
                          )
                        : Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                // color: Colors.amber,
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: kSecondaryColor)),
                          ),
                  )
                ],
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: widget.products.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onDoubleTap: () {
                          showAllPressed = true;
                          showSelectAll = true;

                          setState(() {});
                        },
                        onTap: () {
                          showAllPressed = false;
                          showSelectAll = false;

                          setState(() {});
                        },
                        child: MyCartItem(
                          forceSelection: selectAll,
                          showAllPressed: showAllPressed,
                          productModel: widget.products[index],
                        ),
                      );
                    }),
              ),
            ],
          )
        : ListView.builder(
            itemCount: widget.products.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onDoubleTap: () {
                  showAllPressed = true;
                  showSelectAll = true;
                  log('message1');
                  setState(() {});
                },
                onDoubleTapCancel: () {
                  showAllPressed = false;
                  log('message2');
                  setState(() {});
                },
                child: MyCartItem(
                  showAllPressed: showAllPressed,
                  productModel: widget.products[index],
                ),
              );
            });
  }
}
