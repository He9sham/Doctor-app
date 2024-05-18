import 'package:doctor/core/theming/color.dart';
import 'package:flutter/material.dart';

class RowTextHaveAcc extends StatelessWidget {
  const RowTextHaveAcc({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Already have an account yet?',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            'Sign Up',
            style: TextStyle(
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
