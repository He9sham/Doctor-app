import 'package:doctor/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});
  // final LoginResponse loginResponse;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            const Text(
              'Hi, ${'Hesham'}!',
              style: Styles.textmid,
            ),
            Text(
              'How Are you Today?',
              style: Styles.textsmail.copyWith(
                color: const Color(0xff616161),
                fontSize: 11,
              ),
            )
          ],
        ),
        const Spacer(),
        Container(
          height: 48,
          width: 48,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(48),
            color: const Color(0xffF5F5F5),
          ),
          child: const Icon(FontAwesomeIcons.bell),
        )
      ],
    );
  }
}
