import 'package:flutter/material.dart';
import 'package:provider/pages/cart_page.dart';
import 'package:provider/pages/shop_page.dart';
import 'package:provider/pages/welcome_page.dart';
import 'package:provider/theme/ligh_mode.dart';

void main() {
  runApp(const MinimalShop());
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
