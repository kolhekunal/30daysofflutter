import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

  class MyTheme{
  static ThemeData lightTheme (BuildContext context) => ThemeData(primarySwatch: Colors.purple,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor:Colors.white,
      canvasColor: creamColor,
      buttonColor: darkBluish,
      accentColor: darkBluish,
      appBarTheme: AppBarTheme(color: Colors.white,elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          textTheme: Theme.of(context).textTheme)
  );

  static ThemeData darkTheme (BuildContext context) => ThemeData(
    brightness: Brightness.dark,
      primaryColor: Colors.lightBlue[800],
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor:Colors.black,
      canvasColor: darkcreamColor,
      buttonColor: lightBluish,
      accentColor: Colors.white,
      appBarTheme: AppBarTheme(elevation: 0,
          iconTheme: IconThemeData(color: Colors.white),
          textTheme: Theme.of(context).textTheme.copyWith(headline6: context.textTheme.headline6.copyWith(color: Colors.white)),
        ),
        //  textTheme: Theme.of(context).textTheme.copyWith(headline6: context.textTheme.headline6.copyWith(color: Colors.white))
     );

  //Color
  static Color creamColor = Color(0xfff5f5f5);
  static Color darkcreamColor = Vx.gray900;
  static Color darkBluish = Color(0xff403b58);
  static Color lightBluish = Vx.indigo600;
}