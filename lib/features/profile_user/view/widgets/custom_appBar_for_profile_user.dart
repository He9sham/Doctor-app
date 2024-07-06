import 'package:doctor/core/helper/extensions.dart';
import 'package:doctor/core/utils/route.dart';
import 'package:flutter/material.dart';

import '../../../../core/helper/spacing.dart';

class CustomAppBarforProfileUser extends StatelessWidget {
  const CustomAppBarforProfileUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            size: 20,
          ),
          onPressed: () {
            context.pop();
          },
          color: Colors.white,
        ),
        horizontalSpace(108),
        const Text(
          'Profile',
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        horizontalSpace(108),
        IconButton(
          icon: const Icon(Icons.settings),
          onPressed: () {
            context.pushNamed(Routes.settingScreen);
          },
          color: Colors.white,
        ),
      ],
    );
  }
}
