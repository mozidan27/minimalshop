import 'package:flutter/material.dart';
import 'package:minimalshop/models/product.dart';

class Shop extends ChangeNotifier {
  // products for sale
  final List<Product> _shop = [
    Product(
      name: 'product 1',
      price: '233',
      description: 'new product ',
    ),
    Product(
      name: 'product 2',
      price: '233',
      description: 'new product ',
    ),
    Product(
      name: 'product 3',
      price: '233',
      description: 'new product ',
    ),
    Product(
      name: 'product 4',
      price: '233',
      description: 'new product ',
    ),
    Product(
      name: 'product 5',
      price: '233',
      description: 'new product ',
    ),
  ];

  // user cart
  final List<Product> _cart = [];
  // get product list
  List<Product> get shop => _shop;

  // get user cart
  List<Product> get cart => _cart;

  // add item to cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }
  // remove item from cart

  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
