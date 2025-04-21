// To parse this JSON data, do
//
//     final cartModel = cartModelFromJson(jsonString);

import 'dart:convert';

List<CartModel> cartModelFromJson(String str) {
  final jsonData = json.decode(str);
  return new List<CartModel>.from(jsonData.map((x) => CartModel.fromJson(x)));
}

String cartModelToJson(List<CartModel> data) {
  final dyn = new List<dynamic>.from(data.map((x) => x.toJson()));
  return json.encode(dyn);
}

class CartModel {
  int? id;
  int? userId;
  String? date;
  List<Product>? products;
  int? v;

  CartModel({
    required this.id,
    required this.userId,
    required this.date,
    required this.products,
    required this.v,
  });

  factory CartModel.fromJson(Map<String, dynamic> json) => new CartModel(
    id: json["id"],
    userId: json["userId"],
    date: json["date"],
    products: new List<Product>.from(json["products"].map((x) => Product.fromJson(x))),
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "userId": userId,
    "date": date,
    "products": new List<dynamic>.from(products!.map((x) => x.toJson())),
    "__v": v,
  };
}

class Product {
  int? productId;
  int? quantity;

  Product({
    required this.productId,
    required this.quantity,
  });

  factory Product.fromJson(Map<String, dynamic> json) => new Product(
    productId: json["productId"],
    quantity: json["quantity"],
  );

  Map<String, dynamic> toJson() => {
    "productId": productId,
    "quantity": quantity,
  };
}
