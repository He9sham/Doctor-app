import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppbarSection extends StatelessWidget {
  const AppbarSection({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.only(right: MediaQuery.sizeOf(context).width * 0.4),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontFamily: GoogleFonts.poppins().fontFamily,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
