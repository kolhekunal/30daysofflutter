import 'package:flutter/material.dart';
import 'package:flutter_catelog/pages/login_page.dart';

import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double pi = 3.14;
    num temp = 30.5;
    bool isMale = true;
    var day = "Saturday";
    const pic = 3.14;
    final pif = 3.14;

    return MaterialApp(
      //  home: Homepage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.purple),
      darkTheme:
          ThemeData(brightness: Brightness.dark, primarySwatch: Colors.red),
     initialRoute: "/home",
      routes: {
      "/" : (context) => LoginPage(),
      "/login" : (context) => LoginPage(),
      "/home" : (context) => Homepage()
      },
    );
  }
}
