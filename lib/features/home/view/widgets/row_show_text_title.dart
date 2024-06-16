
import 'package:flutter/material.dart';

class RowShowTextTitle extends StatelessWidget {
  const RowShowTextTitle({super.key, required this.title, required this.onPressed});
  final String title;
 final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Spacer(),
         TextButton(
          onPressed: onPressed ,
          child: const Text( 'See All',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Color(0xff247CFF),
          ),),
        ),
      ],
    );
  }
}
