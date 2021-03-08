class Product {
    String color;
    String desc;
    int id;
    String image;
    String name;
    String price;

    Product({this.color, this.desc, this.id, this.image, this.name, this.price});

    factory Product.fromJson(Map<String, dynamic> json) {
        return Product(
            color: json['color'], 
            desc: json['desc'], 
            id: json['id'], 
            image: json['image'], 
            name: json['name'], 
            price: json['price'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['color'] = this.color;
        data['desc'] = this.desc;
        data['id'] = this.id;
        data['image'] = this.image;
        data['name'] = this.name;
        data['price'] = this.price;
        return data;
    }
}