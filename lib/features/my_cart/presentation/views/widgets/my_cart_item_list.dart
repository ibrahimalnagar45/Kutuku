import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:kutuku/constants.dart';
import 'package:kutuku/core/utils/styles.dart';
import 'package:kutuku/features/my_cart/presentation/views/widgets/my_cart_item.dart';

class MyCartItemsList extends StatefulWidget {
  const MyCartItemsList({super.key});

  @override
  State<MyCartItemsList> createState() => _MyCartItemsListState();
}

class _MyCartItemsListState extends State<MyCartItemsList> {
  bool showAllPressed = false;
  bool showSelectAll = false;
  bool selectAll = false;
  @override
  Widget build(BuildContext context) {
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
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onDoubleTap: () {
                          showAllPressed = true;
                          showSelectAll = true;
                          log('message1');
                          setState(() {});
                        },
                        onTap: () {
                          showAllPressed = false;
                          showSelectAll = false;
                          log('message2');
                          setState(() {});
                        },
                        child: MyCartItem(
                          forceSelection: selectAll,
                          showAllPressed: showAllPressed,
                          productModel: testProducts[index],
                        ),
                      );
                    }),
              ),
            ],
          )
        : ListView.builder(
            itemCount: 10,
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
                  productModel: testProducts[index],
                ),
              );
            });
  }
}
 