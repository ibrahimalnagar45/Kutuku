import 'package:flutter/material.dart';
import 'package:kutuku/constants.dart';
 
import '../../../../../core/utils/styles.dart';
import '../../../../Home/data/models/prodcut_model.dart';

class MyCartItem extends StatefulWidget {
  const MyCartItem({
    super.key,
    required this.productModel,
    this.showAllPressed = false,
    this.forceSelection = false,
  });
  final ProductModel productModel;
  final bool showAllPressed;
  final bool forceSelection;
  @override
  State<MyCartItem> createState() => _MyCartItemState();
}

class _MyCartItemState extends State<MyCartItem> {
  // final void Function()? onLongPress;
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: widget.showAllPressed == true
          ? SizedBox(
              height: 116,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          selected = !selected;
                          // widget.forceSelection != widget.forceSelection;
                          setState(() {});
                        },
                        child: selected || widget.forceSelection
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
                                  size: 15,
                                  color: Colors.white,
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
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: SizedBox(
                          height: 100,
                          width: 90,
                          child: Image.asset(
                            widget.productModel.image!,
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
                            widget.productModel.title!,
                            style: Styles.titleStyle,
                          ),
                          Text(
                            widget.productModel.description!,
                            style: Styles.desStyle,
                          ),
                        ],
                      ),
                      const Spacer(
                        flex: 4,
                      ),
                      Text(
                        '${widget.productModel.price}',
                        style: Styles.titleStyle,
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: .2,
                  ),
                ],
              ),
            )
          : SizedBox(
              height: 116,
              child: Column(
                children: [
                  Row(
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
                            widget.productModel.image!,
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
                            widget.productModel.title!,
                            style: Styles.titleStyle,
                          ),
                          Text(
                            widget.productModel.description!,
                            style: Styles.desStyle,
                          ),
                        ],
                      ),
                      const Spacer(
                        flex: 4,
                      ),
                      const Text(
                        r'$1992',
                        style: Styles.titleStyle,
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: .2,
                  ),
                ],
              ),
            ),
    );
  }
}
