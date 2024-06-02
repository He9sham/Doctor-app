import 'package:doctor/core/utils/app_router.dart';
import 'package:doctor/features/home/view/widgets/custom_container_welcome.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      GoRouter.of(context).push(AppRouter.homepage);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: CustomContanierWelcome(),
          ),
          Text(
            'Congratulations',
            style: TextStyle(
                fontSize: 40,
                color: const Color(0xff233B55),
                fontFamily: GoogleFonts.poppins().fontFamily),
          ),
          Text(
            'Your Registration Is Success',
            style: TextStyle(
              fontSize: 20,
              color: const Color(0xff233B55),
              fontFamily: GoogleFonts.openSans().fontFamily,
            ),
          ),
          Text(
            'Welcome to our app',
            style: TextStyle(
              fontSize: 20,
              color: const Color(0xff233B55),
              fontFamily: GoogleFonts.openSans().fontFamily,
            ),
          ),
        ],
      ),
    );
  }
}
