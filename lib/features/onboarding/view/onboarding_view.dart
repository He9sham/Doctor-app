import 'package:doctor/core/theming/color.dart';
import 'package:doctor/features/onboarding/view/widgets/onboarding_view_body.dart';
import 'package:flutter/material.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorManger.kprimarycolorauth,
      body: OnboardingViewBody(),
    );
  }
}
