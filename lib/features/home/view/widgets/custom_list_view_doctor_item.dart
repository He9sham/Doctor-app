
import 'package:doctor/features/home/view/widgets/custom_Item_doctor.dart';
import 'package:flutter/material.dart';

class CustomListViewDoctorItem extends StatelessWidget {
  const CustomListViewDoctorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: CustomItemDoctor(),
          );
        });
  }
}
