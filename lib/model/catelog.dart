 class CatelogModel{
  static final items = [
     Item(01,
         "iPhone",
         "This is iPhone 11",
         100000,
         "#de5d8a",
         "https://minpex.com/wp-content/uploads/2020/06/iPhone11-Purple-1-150x150.jpg")
   ];
 }

 class Item {
final int id;
final String name;
final String desc;
final num price;
final String color;
final String image;

  Item(this.id, this.name, this.desc, this.price, this.color, this.image);

 }