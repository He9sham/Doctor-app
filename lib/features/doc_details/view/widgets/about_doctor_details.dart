
import 'package:doctor/core/helper/spacing.dart';
import 'package:doctor/core/theming/styles.dart';
import 'package:flutter/material.dart';

class AboutDoctorDetails extends StatelessWidget {
  const AboutDoctorDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          ' Address',
          style: Styles.textmid,
        ),
        verticalSpace(12),
        const Text(
          ' 258 Tiffany View Suite 262 Port Alyceland, ND 16329-8282',
          style: Styles.textsmail,
        ),
        verticalSpace(24),
        const Text(
          'Working Time',
          style: Styles.textmid,
        ),
        verticalSpace(12),
        const Text(
          ' Monday - Friday, 08.00 AM - 20.00 PM',
          style: Styles.textsmail,
        ),
        verticalSpace(24),
        const Text(
          'Specialties',
          style: Styles.textmid,
        ),
        verticalSpace(12),
        const Text(
          ' General | RSUD Gatot Subroto',
          style: Styles.textsmail,
        ),
        verticalSpace(24),
        const Text(
          'About me',
          style: Styles.textmid,
        ),
        verticalSpace(12),
        const Text(
          'Dr. Perry is a highly skilled and experienced treating...',
        )
      ],
    );
  }
}
