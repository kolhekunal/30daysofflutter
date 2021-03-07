import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catelog/model/catelog.dart';
import 'file:///C:/Users/diaspark/FlutterProject/flutter_catelog/lib/widgets/mydrawer.dart';
import 'package:flutter_catelog/widgets/ItemWidget.dart';
import 'dart:convert';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List dummyList = List.generate(50, (index) => CatelogModel.items[0]);
  List dataList = new List<Item>();

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
        body: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder : (context,index){
            return ItemWidget(item: dummyList [index],);
          }
        ),
        drawer: MyDrawer(),
      );
  }

  Future<void> loadData() async {
      var jsonFileData = await rootBundle.loadString("assets/files/catelog.json");
      var catelogData = jsonDecode(jsonFileData);
      //var items = catelogData("products");
    //  print(items);
    /*  dataList.addAll(items);
      print(dataList);
      print(dataList.length);*/
  }
}
