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
       body: Column(
         children: [
           _cartItemList().p16().expand(),
           Divider(),
           _cartList()

         ],


       ),
     );
   }
 }



 class _cartList extends StatefulWidget {
   @override
   __cartListState createState() => __cartListState();
 }

 class __cartListState extends State<_cartList> {
   @override
   Widget build(BuildContext context) {
     return SizedBox(
       height: 200,
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceAround ,
         children: [
           "\$9999".text.xl3.make(),
           30.widthBox,
           ElevatedButton(
             onPressed:(){},
             style:ButtonStyle(backgroundColor: MaterialStateProperty.all(context.theme.buttonColor)),
             child: "Buy".text.center.make().w20(context),

           )

         ],

       ),


     );
   }
 }



 class _cartItemList extends StatefulWidget {
   @override
   __cartItemListState createState() => __cartItemListState();
 }

 class __cartItemListState extends State<_cartItemList> {
   @override
   Widget build(BuildContext context) {
     return ListView.builder(
       itemCount: 5,
         itemBuilder: (context,index) => ListTile(
           leading: Icon(Icons.done),
           trailing: IconButton(
             icon: Icon(Icons.remove_circle_rounded),
             onPressed: (){},
           ),
           title: "Item_1".text.center.make(),

         ));
   }
 }


