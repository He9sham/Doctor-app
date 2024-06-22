import 'package:doctor/features/home/data/models/specialization_response_api.dart';
import 'package:doctor/features/home/view/widgets/view_doctor_speciality.dart';
import 'package:flutter/material.dart';

class DoctorSpecialityListView extends StatelessWidget {
  const DoctorSpecialityListView({super.key, required this.specializationList});
  final List<SpecializationsData?> specializationList;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.13,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemCount: specializationList.length,
        itemBuilder: (context, index) {
          return ViewDoctorSpecialityItem(
            data: specializationList[index] ?? SpecializationsData(),
          );
        },
      ),
    );
  }
}
