import 'package:doctor/core/theming/color.dart';
import 'package:flutter/material.dart';

class RowTextHaveAcc extends StatelessWidget {
  const RowTextHaveAcc(
      {super.key,
      required this.title,
      required this.suptitle,
      required this.onpressed});
  final String title, suptitle;
  final void Function() onpressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
        TextButton(
          onPressed: onpressed,
          child: Text(
            suptitle,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: ColorsManager.mainBlue,
            ),
          ),
        ),
      ],
    );
  }
}
