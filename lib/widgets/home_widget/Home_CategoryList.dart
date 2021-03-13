import 'package:flutter/material.dart';
import 'package:flutter_catelog/model/Product.dart';
import 'package:flutter_catelog/pages/home_details.dart';
import 'package:flutter_catelog/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

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
        return InkWell(
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeDetails(productItem: productItem,))),
          child: Hero(tag: Key(productItem.id.toString()),
              child: CatelogItem(productItem: productItem)),
        );
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
    ).color(context.theme.cardColor).roundedSM.square(120).make().py16();
  }
}
class productImage extends StatelessWidget {
  final String imageItem;

  const productImage({Key key, @required this.imageItem}) : assert(imageItem!=null) ,super(key: key);
  @override
  Widget build(BuildContext context) {
    return Image.network(imageItem).box.roundedSM.p16.color(context.theme.canvasColor).make().p16().w40(context);
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
        productItem.name.text.lg.color(context.theme.accentColor).bold.make(),
        productItem.desc.text.textStyle(context.captionStyle).make(),
        10.heightBox,
        ButtonBar(
          buttonPadding: EdgeInsets.zero,
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            "\$${productItem.price}".text.bold.xl.make(),
            ElevatedButton(onPressed: (){}, child: "Add to cart".text.make(),
              style: ButtonStyle(backgroundColor: MaterialStateProperty.
              all(context.theme.buttonColor),
            )

            )],

        ).pOnly(right: 8)

      ],
    )
    );
  }
}