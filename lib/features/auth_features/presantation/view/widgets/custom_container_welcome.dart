
import 'package:flutter/material.dart';

class CustomContanierWelcome extends StatelessWidget {
  const CustomContanierWelcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        color: const Color(0xff336EA6),
        borderRadius: BorderRadius.circular(300),
      ),
      child: const Icon(
        Icons.check,
        size: 150,
        color: Colors.white,
      ),
    );
  }
}
