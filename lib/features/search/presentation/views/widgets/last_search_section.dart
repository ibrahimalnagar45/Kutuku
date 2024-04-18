import 'package:flutter/material.dart';
import 'package:kutuku/features/search/presentation/views/widgets/last_search_container.dart';

class LastSearchSection extends StatelessWidget {
  const LastSearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            LastSearchContainer(text: 'Pants'),
            LastSearchContainer(text: 'Mic'),
            LastSearchContainer(text: 'Mic'),
            LastSearchContainer(text: 'Pants'),
          ],
        ),
        // SizedBox(
        //   height: 10,
        // ),
        Row(
          mainAxisSize: MainAxisSize.max,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            LastSearchContainer(text: 'Pants'),
            LastSearchContainer(text: 'Mic'),
          ],
        )
      ],
    );
  }
}
