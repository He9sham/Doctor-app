import 'package:doctor/core/helper/spacing.dart';
import 'package:doctor/core/widgets/app_text_button.dart';
import 'package:doctor/features/doc_details/view/widgets/about_doctor_details.dart';
import 'package:doctor/features/doc_details/view/widgets/custom_appbar_for_doc_details.dart';
import 'package:doctor/features/doc_details/view/widgets/custom_row_Show_of_doc.dart';
import 'package:doctor/features/home/data/models/specialization_response_api.dart';
import 'package:flutter/material.dart';

class DocDetailsView extends StatelessWidget {
  const DocDetailsView({super.key, required this.doctors});
  final Doctors doctors;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppbarForDocDetails(
                doctors: doctors,
              ),
              verticalSpace(32),
              CustomRowShowOfDoc(
                doctors: doctors,
              ),
              verticalSpace(15),
              const Divider(),
              verticalSpace(20),
              AboutDoctorDetails(
                doctors: doctors,
              ),
              verticalSpace(80),
              AppTextButton(
                buttonText: 'Make An Appointment',
                onPressed: () {},
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
