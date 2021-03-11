import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         centerTitle:true,
         title: "Cart List".text.capitalize.xl2.bold.color(Colors.black).make(),
       ),
     );
   }
 }
