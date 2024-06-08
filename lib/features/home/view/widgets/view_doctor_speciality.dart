import 'package:doctor/core/helper/spacing.dart';
import 'package:doctor/features/home/data/models/specialization_response_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ViewDoctorSpecialityItem extends StatelessWidget {
  const ViewDoctorSpecialityItem({super.key, required this.data});
  final SpecializationsData data;
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
           Text(
            data.name ?? 'Health',
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
