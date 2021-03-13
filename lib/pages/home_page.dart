import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catelog/Utils/MyRoutes.dart';
import 'package:flutter_catelog/model/Product.dart';
import 'package:flutter_catelog/pages/cart_page.dart';
import 'package:flutter_catelog/widgets/home_widget/Home_CategoryList.dart';
import 'package:flutter_catelog/widgets/home_widget/Home_Header.dart';
import 'package:flutter_catelog/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  List<Product> productList = new List();
  @override
  void initState() {
    super.initState();
    loadData();
  }
  @override
  Widget build(BuildContext context) {
    final int days = 1;

   final  String str = "learning flutter";
    return Scaffold(
      backgroundColor: context.canvasColor,
      floatingActionButton: FloatingActionButton(onPressed: ()
      {Navigator.pushNamed(context, MyRoutes.cartRoute);},
        backgroundColor: context.theme.buttonColor,
      child: Icon(CupertinoIcons.cart,color: Colors.white,),),
    body: SafeArea(
      child: Container(
        padding: Vx.m16,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CatelogHeader(),
            if(productList != null && productList.isNotEmpty)
              CatelogList(productList).py8().expand()
            else
         CircularProgressIndicator().centered().expand()
          ],
        ),
      ),
    ),
    );
  }

  Future<void> loadData() async {
    await Future.delayed(Duration(seconds: 2));
    var jsonFileData = await rootBundle.loadString("assets/files/catelog.json");
    var catelogData = jsonDecode(jsonFileData);
    var itemData = catelogData["products"];
    productList = List.from(itemData).map<Product>((productIteme) =>
        Product.fromJson(productIteme)).toList();
    setState(() {});
  }
}






