import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constant.dart';

ThemeData defaultTheme = ThemeData(
    textTheme: GoogleFonts.poppinsTextTheme(),
    appBarTheme: AppBarTheme(
      backgroundColor: primaryColor,
      elevation: 0,
      iconTheme: IconThemeData(color: primaryColor),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: primaryColor,
    ));
