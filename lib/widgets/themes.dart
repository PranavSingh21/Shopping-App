import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyThemes {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.purple,
      fontFamily: GoogleFonts.poppins().fontFamily,
       cardColor: Colors.white,
       canvasColor: creamColor,
       buttonColor: darkBluishColor,
       accentColor: darkBluishColor,
      appBarTheme: AppBarTheme(
       
        color: Colors.white,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.black),
        toolbarTextStyle: Theme.of(context).textTheme.bodyText2,
        titleTextStyle: Theme.of(context).textTheme.headline6,
      ));

  static ThemeData darkTheme(BuildContext context) => ThemeData(
    brightness: Brightness.dark,
       fontFamily: GoogleFonts.poppins().fontFamily,
       cardColor: Colors.black,
       canvasColor: darkcreamColor,
       buttonColor: lightBluishColor,
       accentColor: Vx.white,
      appBarTheme: AppBarTheme(
        color: Colors.black,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.white),
        toolbarTextStyle: Theme.of(context).textTheme.bodyText2,
        titleTextStyle: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.white),
      )
      ); 

//colors
  static Color creamColor = Color(0xfff5f5f5);
   static Color darkcreamColor = Vx.gray900;
  static Color darkBluishColor = Color(0xff403b58);
   static Color lightBluishColor =Vx.indigo500;
  
}
