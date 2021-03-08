import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catelog/model/Product.dart';
import 'file:///C:/Users/diaspark/FlutterProject/flutter_catelog/lib/widgets/mydrawer.dart';
import 'package:flutter_catelog/widgets/ItemWidget.dart';
import 'dart:convert';

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
      appBar: AppBar(title: Text("Catelog"),
      centerTitle: true,),
        body: (productList !=null && productList.isNotEmpty)? ListView.builder(
          itemCount: productList.length,
          itemBuilder : (context,index){
            return ItemWidget(item: productList [index],);
          }
        ):Center(
          child: CircularProgressIndicator(),
        ),
        drawer: MyDrawer(),
      );
  }

  Future<void> loadData() async {
  await Future.delayed(Duration(seconds: 2));
      var jsonFileData = await rootBundle.loadString("assets/files/catelog.json");
      var catelogData = jsonDecode(jsonFileData);
      var itemData = catelogData["products"];
      productList = List.from(itemData).map<Product>((productIteme) => Product.fromJson(productIteme)).toList();
      setState(() {
      });
  }
}
