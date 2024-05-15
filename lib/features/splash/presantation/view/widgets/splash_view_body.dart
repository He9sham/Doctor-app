import 'package:doctor/core/utils/app_router.dart';
import 'package:doctor/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

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
      GoRouter.of(context).push(AppRouter.onboardingview);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/image/Logo Shapes 17.jpg'),
        const SizedBox(
          height: 12,
        ),
        Center(
          child: Text(
            'Markaz ElAmal',
            style: Styles.textonbording24.copyWith(
              fontFamily: GoogleFonts.peralta().fontFamily,
            ),
          ),
        ),
      ],
    );
  }
}
