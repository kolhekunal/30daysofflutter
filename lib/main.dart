import 'package:flutter/material.dart';

import 'home_page.dart';

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
      home: Homepage(),
    );
  }
}
