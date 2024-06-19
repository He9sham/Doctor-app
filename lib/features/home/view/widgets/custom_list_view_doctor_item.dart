import 'package:doctor/features/home/data/models/specialization_response_api.dart';
import 'package:doctor/features/home/view/widgets/custom_Item_doctor.dart';
import 'package:flutter/material.dart';

class CustomListViewDoctorItem extends StatelessWidget {
  const CustomListViewDoctorItem({super.key, required this.doctorlist});
  final List<Doctors?> doctorlist;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: doctorlist.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: CustomItemDoctor(
              data: doctorlist[index],
            ),
          );
        });
  }
}
