import 'package:doctor/core/helper/spacing.dart';
import 'package:doctor/core/theming/styles.dart';
import 'package:doctor/features/home/data/models/specialization_response_api.dart';
import 'package:flutter/material.dart';

class AboutDoctorDetails extends StatelessWidget {
  const AboutDoctorDetails({super.key, required this.doctors});
  final Doctors doctors;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Address',
          style: Styles.textmid,
        ),
        verticalSpace(12),
        SizedBox(
          width: double.infinity,
          child: Text(
            doctors.address ??
                '258 Tiffany View Suite 262 Portalyceland, ND 16329-8282',
            style: Styles.textsmail,
            overflow: TextOverflow.fade,
          ),
        ),
        verticalSpace(24),
        const Text(
          'Working Time',
          style: Styles.textmid,
        ),
        verticalSpace(12),
        Text(
          ' Monday - Friday, ${doctors.startTime} - ${doctors.endTime}',
          style: Styles.textsmail,
        ),
        verticalSpace(24),
        const Text(
          'Phone',
          style: Styles.textmid,
        ),
        verticalSpace(12),
        Text(
          ' ${doctors.phone}',
          style: Styles.textsmail,
        ),
        verticalSpace(24),
        const Text(
          'price',
          style: Styles.textmid,
        ),
        verticalSpace(12),
        Text('${doctors.price.toString()}' r' $')
      ],
    );
  }
}
