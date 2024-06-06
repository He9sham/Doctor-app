import 'package:doctor/core/helper/spacing.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomItemDoctor extends StatelessWidget {
  const CustomItemDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset('assets/image/Test_photo.png'),
        horizontalSpace(10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Dr. Randy Wigham',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            verticalSpace(4),
            const Text(
              'General   |   RSUD Gatot Subroto',
              style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff757575),
                  fontWeight: FontWeight.bold),
            ),
            verticalSpace(4),
            const Row(
              children: [
                Icon(
                  FontAwesomeIcons.solidStar,
                  size: 17,
                  color: Colors.amber,
                ),
                Text(' 4.8'),
                Text('  (4,279 reviews)')
              ],
            )
          ],
        )
      ],
    );
  }
}
