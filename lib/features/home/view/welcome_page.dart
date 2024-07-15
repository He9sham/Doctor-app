import 'package:doctor/core/helper/extensions.dart';
import 'package:doctor/core/utils/route.dart';
import 'package:doctor/features/home/view/widgets/custom_container_welcome.dart';
import 'package:flutter/material.dart';
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
    Future.delayed(const Duration(seconds: 3), () {
      context.pushNamed(Routes.chataiScreen);
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
            'Hi there !',
            style: TextStyle(
                fontSize: 40,
                color: const Color(0xff233B55),
                fontFamily: GoogleFonts.poppins().fontFamily),
          ),
          Text(
            'Welcome to the AI ​​conversation',
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
