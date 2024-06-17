import 'package:doctor/core/helper/spacing.dart';
import 'package:doctor/features/home/data/models/specialization_response_api.dart';
import 'package:flutter/material.dart';

class ViewDoctorSpecialityItemForDocSpeciView extends StatelessWidget {
  const ViewDoctorSpecialityItemForDocSpeciView(
      {super.key, required this.data});
  final SpecializationsData data;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.100,
      width: MediaQuery.sizeOf(context).width * 0.100,
      child: Column(
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height * 0.09,
            width: MediaQuery.sizeOf(context).width * 0.20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100), color: Colors.black,
              // color: const Color(0xffF5F5F5),
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
