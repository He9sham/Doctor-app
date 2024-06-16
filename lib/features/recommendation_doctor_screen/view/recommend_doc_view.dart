import 'package:doctor/core/helper/spacing.dart';
import 'package:doctor/features/recommendation_doctor_screen/view/widgets/custom_app_bar_for_doc.dart';
import 'package:doctor/features/recommendation_doctor_screen/view/widgets/custom_search.dart';
import 'package:flutter/material.dart';

class RecommendDocView extends StatelessWidget {
  const RecommendDocView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const CustomAppBar(),
              verticalSpace(32),
              CustomSearch(
                name: 'Search',
                onchanged: (data) {},
              ),
              verticalSpace(24),
            ],
          ),
        ),
      ),
    );
  }
}
