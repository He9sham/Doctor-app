
import 'package:doctor/core/helper/extensions.dart';
import 'package:doctor/core/helper/spacing.dart';
import 'package:flutter/material.dart';

class CustomAppbarSetting extends StatelessWidget {
  const CustomAppbarSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            size: 20,
          ),
          onPressed: () {
            context.pop();
          },
          color: Colors.black,
        ),
        horizontalSpace(95),
        const Text(
          'Setting',
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
