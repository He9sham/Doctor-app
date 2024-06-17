import 'package:doctor/core/helper/spacing.dart';
import 'package:doctor/features/recommendation_doctor_screen/view/widgets/bloc_build_for_doc_specialtiy.dart';
import 'package:doctor/features/recommendation_doctor_screen/view/widgets/custom_app_bar_for_doc.dart';
import 'package:flutter/material.dart';

class DoctorSpeciality extends StatelessWidget {
  const DoctorSpeciality({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
          child: Column(
            children: [
              const CustomAppBarForDocDitels(
                num: 70,
                title: 'Doctor Speciality',
              ),
              verticalSpace(51),
              const BlocBuildForDocSpecialtiy(),
            ],
          ),
        ),
      ),
    );
  }
}
