import 'package:flutter_catelog/model/Product.dart';

class CatelogModel {
     List<Product> products;

     CatelogModel({this.products});

    factory CatelogModel.fromJson(Map<String, dynamic> json) {
        return CatelogModel(
            products: json['products'] != null ? (json['products'] as List).map((i) => Product.fromJson(i)).toList() : null, 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        if (this.products != null) {
            data['products'] = this.products.map((v) => v.toJson()).toList();
        }
        return data;
    }
}