
import 'package:doctor/features/home/data/models/specialization_response_api.dart';
import 'package:doctor/features/recommendation_doctor_screen/view/widgets/view_doctor_speciality_item_in_doc_speci_view.dart';
import 'package:flutter/material.dart';

class DoctorSpecialityGridView extends StatelessWidget {
  const DoctorSpecialityGridView({super.key, required this.specializationList});
   final List<SpecializationsData?> specializationList;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (_, index) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: ViewDoctorSpecialityItemForDocSpeciView(
          data: specializationList[index] ?? SpecializationsData(),
        ),
      ),
      itemCount: specializationList.length,
    );
  }
}