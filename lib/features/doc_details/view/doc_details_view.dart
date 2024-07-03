import 'package:doctor/core/helper/spacing.dart';
import 'package:doctor/core/widgets/app_text_button.dart';
import 'package:doctor/features/doc_details/view/widgets/about_doctor_details.dart';
import 'package:doctor/features/doc_details/view/widgets/custom_appbar_for_doc_details.dart';
import 'package:doctor/features/doc_details/view/widgets/custom_row_Show_of_doc.dart';
import 'package:flutter/material.dart';

class DocDetailsView extends StatelessWidget {
  const DocDetailsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppbarForDocDetails(),
              verticalSpace(32),
              const CustomRowShowOfDoc(),
              verticalSpace(15),
              const Divider(),
              verticalSpace(20),
              const AboutDoctorDetails(),
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
