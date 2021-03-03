import 'package:flutter/material.dart';
import 'package:flutter_catelog/Utils/MyRoutes.dart';
import 'package:flutter_catelog/pages/login_page.dart';
import 'package:flutter_catelog/pages/theme.dart';
import 'package:google_fonts/google_fonts.dart';

import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
     initialRoute: MyRoutes.homeRoute,
      routes: {
      "/" : (context) => LoginPage(),
      MyRoutes.loginRoute : (context) => LoginPage(),
      MyRoutes.homeRoute : (context) => Homepage()
      },
    );
  }
}
