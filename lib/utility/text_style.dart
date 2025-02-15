import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  static final TextStyle headingLarge = GoogleFonts.poppins(
    fontSize: 50,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static final TextStyle headingMedium = GoogleFonts.poppins(
    fontSize: 55,
    fontWeight: FontWeight.w600,
    color: Colors.yellow,
  );

  static final TextStyle buttonText = GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static final TextStyle searchButtonText = GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static final TextStyle cityName = GoogleFonts.poppins(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static final TextStyle temperature = GoogleFonts.poppins(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static final TextStyle allDescription = GoogleFonts.poppins(
    fontSize: 14,
    color: Colors.white,
  );
}
