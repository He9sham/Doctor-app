import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class Styles {
  static const textmlarg = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 30,
  );
  static const textmid = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 20,
  );
  static const textsmail = TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 14,
  );
  static const colorhintsearch = TextStyle(
    color: Colors.black,
  );
  static  TextStyle textonbording = TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 24,
    fontFamily: GoogleFonts.poppins().fontFamily
  );
}
