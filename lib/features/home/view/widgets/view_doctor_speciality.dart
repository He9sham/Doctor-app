import 'package:doctor/core/helper/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ViewDoctorSpecialityItem extends StatelessWidget {
  const ViewDoctorSpecialityItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
              child: Image.asset('assets/image/Brain 1.png'),
            ),
          ),
          verticalSpace(5),
          const Text(
            'hesham',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
