import 'package:doctor/core/helper/spacing.dart';
import 'package:doctor/features/home/data/models/specialization_response_api.dart';
import 'package:flutter/material.dart';

class CustomItemDoctor extends StatelessWidget {
  const CustomItemDoctor({super.key, required this.data});
  final Doctors? data;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset('assets/image/Test_photo.png'),
        horizontalSpace(10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              data?.name ?? 'Dr. Jerry Wigham',
              style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            verticalSpace(4),
            Text(
              "${data?.degree} | ${data?.phone}",
              style: const TextStyle(
                  fontSize: 12,
                  color: Color(0xff757575),
                  fontWeight: FontWeight.bold),
            ),
            verticalSpace(4),
            Row(
              children: [Text('${data?.email}')],
            )
          ],
        )
      ],
    );
  }
}
