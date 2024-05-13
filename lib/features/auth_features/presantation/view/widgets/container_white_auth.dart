import 'package:flutter/material.dart';

class ContainerWhiteAuth extends StatelessWidget {
  const ContainerWhiteAuth({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height / 1.8,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(50), topLeft: Radius.circular(50)),
      ),
    );
  }
}
