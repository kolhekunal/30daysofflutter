import 'package:flutter/material.dart';
import 'package:flutter_catelog/model/Product.dart';
import 'package:flutter_catelog/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetails extends StatelessWidget {
  final Product productItem;

  const HomeDetails({Key key, @required this.productItem}) : assert(productItem != null), super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      appBar: AppBar(),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(

          buttonPadding: EdgeInsets.zero,
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            "\$${productItem.price}".text.black.bold.xl4.make(),
            ElevatedButton(onPressed: (){}, child: "Buy".text.make(),
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(MyTheme.darkBluish)),
            ).wh(100, 40)

          ],

        ).p16(),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Hero(tag: Key(productItem.id.toString()),
                child: Image.network(productItem.image)).h32(context).py12(),
Expanded(
    child: VxArc(
      height: 30,
      arcType: VxArcType.CONVEY,
      edge: VxEdge.TOP,
      child: Container(
        width: context.screenWidth,
        child: Column(
          children: [
            productItem.name.text.xl4.color(MyTheme.darkBluish).bold.make(),
            productItem.desc.text.xl.textStyle(context.captionStyle).make(),
            10.heightBox,
          ],
        ).py64(),
  color: Colors.white,
),
    ))


          ],
        ),
      )

    );
  }
}
