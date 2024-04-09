import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kutuku/constants.dart';

class VerificationCodeBloc extends StatefulWidget {
  const VerificationCodeBloc({
    super.key,
    // this.isFocused = false,
    // this.onsubmitted,
    // required this.focusNode,
  });
  // final bool isFocused;
  // final FocusNode focusNode;
  // final FocusNode? nextFocus;
  // final void Function(String)? onsubmitted;
  @override
  State<VerificationCodeBloc> createState() => _VerificationCodeBlocState();
}

class _VerificationCodeBlocState extends State<VerificationCodeBloc> {
  bool isFocused = false;

  @override
  // void initState() {
  //   widget.focusNode.addListener(() {
  //     _handleFocusChange();
  //   });

  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   super.dispose();
  //    widget.focusNode.removeListener(_handleFocusChange);
  // }

  // void _handleFocusChange() {
  //   setState(() {
  //     isFocused = widget.focusNode.hasFocus;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: isFocused ? kPrimaryColor : kSecondaryColor,
          width: isFocused ? 1 : .5,
        ),
      ),
      child: Center(
        child: TextField(
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
          ],
          // onSubmitted: widget.onsubmitted,
          // autofocus: widget.isFocused,
          // focusNode: widget.focusNode,
          textAlign: TextAlign.center,
          cursorColor: kPrimaryColor.withOpacity(.8),
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          decoration: const InputDecoration(
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
