
import 'package:doctor/core/helper/extensions.dart';
import 'package:flutter/material.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/styles.dart';

class CustomAppbarForDocDetails extends StatelessWidget {
  const CustomAppbarForDocDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            context.pop();
          },
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.black.withOpacity(0.2),
              ),
            ),
            child: const Icon(Icons.arrow_back),
          ),
        ),
        horizontalSpace(60),
        const Text(
          'Dr Randy Wigham',
          style: Styles.textmid,
        ),
      ],
    );
  }
}
