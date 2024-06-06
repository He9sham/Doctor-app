import 'package:doctor/features/home/view/widgets/view_doctor_speciality.dart';
import 'package:flutter/material.dart';

class DoctorSpecialityListView extends StatelessWidget {
  const DoctorSpecialityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.15,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) {
          return const ViewDoctorSpecialityItem();
        },
      ),
    );
  }
}
