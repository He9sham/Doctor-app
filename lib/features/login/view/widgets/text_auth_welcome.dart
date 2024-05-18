import 'package:doctor/core/theming/color.dart';
import 'package:doctor/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextAuthWelcome extends StatelessWidget {
  const TextAuthWelcome(
      {super.key, required this.title, required this.subtitle});
  final String title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.only(right: MediaQuery.sizeOf(context).width * 0.4),
          child: Text(
            title,
            style: Styles.font14DarkBlueMedium.copyWith(
              color: ColorsManager.mainBlue,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        Text(
          subtitle,
          style: Styles.font14DarkBlueMedium.copyWith(
            color: const Color(0xff6F6F6F),
          ),
        ),
      ],
    );
  }
}
