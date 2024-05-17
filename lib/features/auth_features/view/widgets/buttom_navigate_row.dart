import 'package:flutter/material.dart';

class ButtomNavigateRow extends StatelessWidget {
  const ButtomNavigateRow({
    super.key,
    required this.title,
    required this.typeauth,
    required this.onpressed,
  });
  final String title, typeauth;
  final void Function() onpressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
        TextButton(
          onPressed: onpressed,
          child: Text(
            typeauth,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.tealAccent,
            ),
          ),
        ),
      ],
    );
  }
}
