import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catelog/model/CatelogModel.dart';
import 'package:flutter_catelog/model/Product.dart';
import 'file:///C:/Users/diaspark/FlutterProject/flutter_catelog/lib/widgets/mydrawer.dart';
import 'package:flutter_catelog/widgets/ItemWidget.dart';
import 'package:flutter_catelog/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';
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
      backgroundColor: MyTheme.creamColor,
    body: SafeArea(
      child: Container(
        padding: Vx.m32,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CatelogHeader(),
            if(productList != null && productList.isNotEmpty)
              CatelogList(productList).expand()
            else
           Center(child: CircularProgressIndicator(),)
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

class CatelogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catelog App".text.xl5.bold.color(MyTheme.darkBluish).make(),
        SizedBox(width: 0,height: 2,),
        "Trending products".text.xl.make()
      ],
    );
  }
}

class CatelogList extends StatelessWidget {
  List<Product>productList1;
  CatelogList(List<Product> productList){
    this.productList1 = productList;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: productList1.length,
      itemBuilder: (context,index){
        final productItem = productList1[index];
        return CatelogItem(productItem: productItem);
      },
    );
  }
}
class CatelogItem extends StatelessWidget {
final Product productItem;

  const CatelogItem({Key key, @required this.productItem}) : assert(productItem !=null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          productImage(imageItem: productItem.image),
          descDetails(productItem: productItem),
        ],
      )
    ).white.roundedSM.square(120).make().py16();
  }
}

class productImage extends StatelessWidget {
  final String imageItem;

  const productImage({Key key, @required this.imageItem}) : assert(imageItem!=null) ,super(key: key);
  @override
  Widget build(BuildContext context) {
    return Image.network(imageItem).box.roundedSM.p16.color(MyTheme.creamColor).make().p16().w40(context);
  }
}


class descDetails extends StatelessWidget {
  final Product productItem;

  const descDetails({Key key, @required this.productItem}) : assert(productItem !=null), super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Expanded(child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    productItem.name.text.lg.color(MyTheme.darkBluish).bold.make(),
    productItem.desc.text.textStyle(context.captionStyle).make(),
    10.heightBox,
    ButtonBar(
    buttonPadding: EdgeInsets.zero,
    alignment: MainAxisAlignment.spaceBetween,
    children: [
    "\$${productItem.price}".text.bold.xl.make(),
    ElevatedButton(onPressed: (){}, child: "Buy".text.make(),
    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(MyTheme.darkBluish)),
    )

    ],

    ).pOnly(right: 8)

    ],
    )
    );
  }
}






