import 'package:doctor/core/helper/extensions.dart';
import 'package:doctor/core/helper/spacing.dart';
import 'package:doctor/core/utils/route.dart';
import 'package:flutter/material.dart';


class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      context.pushNamed(Routes.onBoardingScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/image/Logo.png',
          height: sizeOfHeight(0.5, context),
        ),
      ],
    );
  }
}
