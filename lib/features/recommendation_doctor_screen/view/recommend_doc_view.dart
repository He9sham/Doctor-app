import 'package:doctor/features/recommendation_doctor_screen/view/widgets/custom_app_bar_for_doc.dart';
import 'package:flutter/material.dart';

class RecommendDocView extends StatelessWidget {
  const RecommendDocView({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              CustomAppBar(),
            ],
          ),
        ),
      ),
    );
  }
}


