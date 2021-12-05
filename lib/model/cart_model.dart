import 'package:khidza/model/product_model.dart';

class CartModel {
  int id;
  ProductModel product;
  int quantity;

  CartModel({
    required this.id,
    required this.product,
    required this.quantity,
  });
  factory CartModel.fromJson(Map<String, dynamic> json) {
    return CartModel(
        id: json['id'],
        product: ProductModel.fromJson(json['product']),
        quantity: json['quantity']);
  }
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'quantity': quantity,
      'product': product.toJson(),
    };
  }

  double getTotalPrice() {
    return product.price! * quantity;
  }
}