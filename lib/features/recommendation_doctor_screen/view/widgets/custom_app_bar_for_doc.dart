import 'package:doctor/core/helper/extensions.dart';
import 'package:doctor/core/helper/spacing.dart';
import 'package:flutter/material.dart';

class CustomAppBarForDocDitels extends StatelessWidget {
  const CustomAppBarForDocDitels(
      {super.key, required this.title, required this.num});
  final String title;
  final double num;
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
        horizontalSpace(num),
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        )
      ],
    );
  }
}
