import 'package:flutter/material.dart';

class CustomContainerAuthInputBlue extends StatelessWidget {
  const CustomContainerAuthInputBlue(
      {super.key, required this.child, required this.height});
  final Widget child;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: MediaQuery.sizeOf(context).width * 0.85,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: const BorderRadius.all(
          Radius.circular(30),
        ),
        border: Border.all(
          color: Colors.white,
          width: 8,
        ),
      ),
      child: child,
    );
  }
}
