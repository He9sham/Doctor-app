import 'package:doctor/core/helper/extensions.dart';
import 'package:doctor/core/helper/spacing.dart';
import 'package:flutter/material.dart';

class CustomAppbarSetting extends StatelessWidget {
  const CustomAppbarSetting({super.key, required this.title, required this.width});
  final String title;
  final double width;
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
        horizontalSpace(width),
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
