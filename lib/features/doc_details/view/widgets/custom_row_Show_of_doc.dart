
import 'package:doctor/core/helper/spacing.dart';
import 'package:doctor/core/theming/styles.dart';
import 'package:doctor/features/home/data/models/specialization_response_api.dart';
import 'package:flutter/widgets.dart';

class CustomRowShowOfDoc extends StatelessWidget {
  const CustomRowShowOfDoc({super.key, required this.doctors});
  final Doctors doctors;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/image/Test_photo.png' ,
          height: 90,
        ),
        horizontalSpace(12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text(
              doctors.name ?? 'Dr. Jerry Wigham',
              style: Styles.textmid,
            ),
            verticalSpace(4),
             Text(
              "${doctors.degree} | ${doctors.phone}",
              style: const TextStyle(
                  fontSize: 12,
                  color: Color(0xff757575),
                  fontWeight: FontWeight.bold),
            ),
            verticalSpace(4),
             Text(doctors.email ?? 'Heshamhemdan51@gmail.com'),
          ],
        )
      ],
    );
  }
}
