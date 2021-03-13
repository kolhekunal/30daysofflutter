import 'package:flutter/material.dart';
import 'package:flutter_catelog/Utils/MyRoutes.dart';
import 'package:flutter_catelog/pages/cart_page.dart';
import 'package:flutter_catelog/pages/login_page.dart';
import 'file:///C:/Users/diaspark/FlutterProject/flutter_catelog/lib/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
     initialRoute: MyRoutes.loginRoute,
      routes: {
      "/" : (context) => LoginPage(),
      MyRoutes.loginRoute : (context) => LoginPage(),
      MyRoutes.homeRoute : (context) => Homepage(),
      MyRoutes.cartRoute : (context) => CartPage()
      },
    );
  }
}
