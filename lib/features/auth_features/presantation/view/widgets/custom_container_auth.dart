
import 'package:doctor/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomContenerauth extends StatelessWidget {
  const CustomContenerauth({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          title,
          style: Styles.textonbording.copyWith(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
