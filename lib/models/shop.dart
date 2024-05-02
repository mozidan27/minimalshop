import 'package:flutter/material.dart';
import 'package:minimalshop/models/product.dart';

class Shop extends ChangeNotifier {
  // products for sale
  final List<Product> _shop = [
    Product(
        name: 'Mesh Sport Cap',
        price: '238',
        description:
            "Baseball Cap Polo Style Classic Sports Casual Plain Sun Hat",
        imagePath: 'assets/ob.png'),
    Product(
        name: 'CaBaseball & Snapback',
        price: '890',
        description: 'New York NY Baseball & Snapback Hat For Unisex',
        imagePath: 'assets/cap.webp'),
    Product(
        name: 'Iphone 13 Cover',
        price: '1209',
        description:
            'Perfect Fit : New design iphone 13 clear case with built in Camera Lens Protector compatible for Iphone 13',
        imagePath: 'assets/cover.png'),
    Product(
        name: 'Miza Hoodie',
        price: '1507',
        description: 'Miza Hoodie With Side Pockets',
        imagePath: 'assets/hoodie2.png'),
    Product(
        name: 'Men Sneaker',
        price: '2780',
        description: 'Breathable helps absorb moisture from the foot',
        imagePath: 'assets/shoe.jpg'),
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
