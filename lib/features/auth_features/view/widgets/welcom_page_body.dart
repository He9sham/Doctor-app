import 'package:doctor/features/auth_features/view/widgets/custom_container_welcome.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomPageBody extends StatelessWidget {
  const WelcomPageBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
