import 'package:doctor/core/theming/color.dart';
import 'package:doctor/core/utils/app_router.dart';
import 'package:doctor/features/onboarding/presantation/view/widgets/custom_container_text_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:go_router/go_router.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(
      finishButtonText: 'Register',
      onFinish: () {
        GoRouter.of(context).push(AppRouter.sighupview);
      },
      finishButtonStyle: const FinishButtonStyle(
        backgroundColor: ColorManger.kDarkBlueColor,
      ),
      trailing: const Text(
        'Login',
        style: TextStyle(
          fontSize: 16,
          color: ColorManger.kDarkBlueColor,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailingFunction: () {
        GoRouter.of(context).push(AppRouter.sighinview);
      },
      controllerColor: ColorManger.kDarkBlueColor,
      totalPage: 3, // This matches the length of the pageBodies array
      headerBackgroundColor: Colors.white,
      pageBackgroundColor: Colors.white,
      background: [
        Image.asset(
          'assets/image/Onboarding_view1.png',
          height: 400,
        ),
        Image.asset(
          'assets/image/Onboarding_view2.png',
          height: 400,
        ),
        Image.asset(
          'assets/image/Onboarding_view3.png',
          height: 400,
        ),
      ],
      speed: 1.8,
      pageBodies: const [
        CustomContainerTextView(
          title: 'Choose your doctor',
          subtitle:
              'Application provide you with alot of experienced doctors you can see these profile and choose one you want to appointment with him.',
        ),
        CustomContainerTextView(
          title: 'Choose date and time',
          subtitle:
              'The application can help you choose the appropriate date and time for you and the selected doctor.',
        ),
        CustomContainerTextView(
          title: 'Communicate with your doctor',
          subtitle:
              'Once you access the profile of doctor you selected you can communicate with him and send any message .',
        ),
      ],
    );
  }
}
