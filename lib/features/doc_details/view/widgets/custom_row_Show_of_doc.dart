
import 'package:doctor/core/helper/spacing.dart';
import 'package:doctor/core/theming/styles.dart';
import 'package:flutter/widgets.dart';

class CustomRowShowOfDoc extends StatelessWidget {
  const CustomRowShowOfDoc({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/image/Test_photo.png',
          height: 90,
        ),
        horizontalSpace(12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Dr. Randy Wigham',
              style: Styles.textmid,
            ),
            verticalSpace(4),
            const Text(
              'General | RSUD Gatot Subroto',
              style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff757575),
                  fontWeight: FontWeight.bold),
            ),
            verticalSpace(4),
            const Text('Heshamhemdan51@gmail.com'),
          ],
        )
      ],
    );
  }
}
