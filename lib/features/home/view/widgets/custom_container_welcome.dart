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
      child: CircleAvatar(
        maxRadius: 24,
        minRadius: 24,
        backgroundColor: Colors.black,
        child: Image.asset('assets/image/Chat_ai.png'),
      ),
    );
  }
}
