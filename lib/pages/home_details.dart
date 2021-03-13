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
      backgroundColor: context.theme.canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: Container(
        color: context.theme.cardColor,
        child: ButtonBar(
          buttonPadding: EdgeInsets.zero,
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            "\$${productItem.price}".text.color(context.theme.accentColor).bold.xl4.make(),
            ElevatedButton(onPressed: (){}, child: "Add to cart".text.make(),
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(MyTheme.darkBluish)),
            ).wh(120, 40)
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
            productItem.name.text.xl4.color(context.theme.accentColor).bold.make(),
            productItem.desc.text.xl.textStyle(context.captionStyle).make(),
            10.heightBox,
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
                "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.".text.make().p16()

          ],
        ).py32(),
  color: context.theme.cardColor,
),
    ))


          ],
        ),
      )

    );
  }
}
