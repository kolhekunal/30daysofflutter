import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return  Scaffold(
         backgroundColor: context.theme.canvasColor,
         appBar: AppBar(
           backgroundColor: Colors.transparent,
           centerTitle:true,
           title: "Cart List".text.capitalize.blue700.make(),
         ),
     );
   }
 }
