import 'package:flutter/material.dart';
import 'package:flutter_catelog/model/Product.dart';


class ItemWidget extends StatelessWidget {
  final Product item;
  const ItemWidget({Key key, @required this.item}) : assert(item != null),    super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        child: ListTile(
          onTap: (){
            print("${item.name} pressed");
          },
          leading: Image.network(item.image),
          title: Text(item.name),
          subtitle: Text(item.desc),
          trailing: Text("\$${item.price}",style: TextStyle(fontSize: 20, color: Colors.deepPurple,fontWeight: FontWeight.bold),),

        ),
      ),
    );
  }
}
