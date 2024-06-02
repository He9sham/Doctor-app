import 'package:doctor/core/helper/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ViewDoctorSpeciality extends StatelessWidget {
  const ViewDoctorSpeciality({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ViewDoctorSpecialityItem(
          path: 'assets/image/Brain 1.png',
          title: 'General',
        ),
        ViewDoctorSpecialityItem(
          path: 'assets/image/Brain 1.png',
          title: 'Neurologic',
        ),
        ViewDoctorSpecialityItem(
          path: 'assets/image/Brain 1.png',
          title: 'Pediatric',
        ),
        ViewDoctorSpecialityItem(
          path: 'assets/image/Brain 1.png',
          title: 'Radiology',
        ),
      ],
    );
  }
}

class ViewDoctorSpecialityItem extends StatelessWidget {
  const ViewDoctorSpecialityItem(
      {super.key, required this.path, required this.title});
  final String path, title;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.15,
        width: 87.w,
        child: Column(
          children: [
            Container(
              height: 70.h,
              width: 70.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: const Color(0xffF5F5F5),
              ),
              child: Center(
                child: Image.asset(path),
              ),
            ),
            verticalSpace(5),
            Text(
              title,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
