import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final int days = 1;
   final  String str = "learning flutter";
    return Scaffold(
      appBar: AppBar(title: Text("Catelog"),
      centerTitle: true),
        body: Center(
          child: Container(
            child: Text("Welcome Kunal $days $str"),
          ),
        ),
        drawer: Drawer(),
      );
  }
}