
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/helpers/build_outline_input_border.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                children: [
                  IconButton(
                    onPressed: () {
                      GoRouter.of(context).pop();
                    },
                    icon: const Icon(Icons.arrow_back_ios_new),
                  ),
                  Expanded(
                    child: TextFormField(
                      style: const TextStyle(color: kPrimaryColor),
                      cursorColor: kPrimaryColor,
                      cursorWidth: .8,
                      decoration: InputDecoration(
                        hintText: 'Search ',
                        hintFadeDuration: const Duration(milliseconds: 500),
                        contentPadding: const EdgeInsets.only(left: 20),
                        border: buildOutLineInputBorder(
                            enabled: true, color: kPrimaryColor, padding: 12),
                        prefixIcon: const Icon(Icons.search_rounded),

                        // enabledBorder: outLineInputBorder(),
                        // disabledBorder: outLineInputBorder(),
                        focusedBorder: buildOutLineInputBorder(
                          enabled: true,
                          color: kPrimaryColor,
                          padding: 12,
                        ),
                      ),
                    ),
                  ),
                ],
              );
  }
}