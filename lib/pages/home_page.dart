import 'package:flutter/material.dart';
import 'package:flutter_catelog/model/catelog.dart';
import 'file:///C:/Users/diaspark/FlutterProject/flutter_catelog/lib/widgets/mydrawer.dart';
import 'package:flutter_catelog/widgets/ItemWidget.dart';

class Homepage extends StatelessWidget {
  List dummyList = List.generate(50, (index) => CatelogModel.items[0]);
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
            return ItemWidget(item: dummyList[index],);
          }
        ),
        drawer: MyDrawer(),
      );
  }
}
