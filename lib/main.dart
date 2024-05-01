import 'package:flutter/material.dart';
import 'package:minimalshop/models/shop.dart';
import 'package:minimalshop/pages/cart_page.dart';
import 'package:minimalshop/pages/shop_page.dart';
import 'package:minimalshop/pages/welcome_page.dart';
import 'package:minimalshop/theme/ligh_mode.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Shop(),
    child: const MinimalShop(),
  ));
}

class MinimalShop extends StatelessWidget {
  const MinimalShop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const WelcomePage(),
      theme: lightMode,
      routes: {
        '/shop_page': (context) => const ShopPage(),
        '/cart_page': (context) => const CartPage(),
        '/welcome_page': (context) => const WelcomePage()
      },
    );
  }
}
