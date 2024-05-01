import 'package:flutter/material.dart';
import 'package:minimalshop/models/product.dart';
import 'package:minimalshop/models/shop.dart';
import 'package:minimalshop/widgets/my_drawer.dart';
import 'package:minimalshop/widgets/my_product_tile.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    final products = context.watch<Shop>().shop;

    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            "Shop Page",
            style:
                TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
          ),
        ),
        drawer: const MyDrawer(),
        body: ListView(
          children: [
            const SizedBox(
              height: 25,
            ),
            // shop subtitle
            Center(
              child: Text(
                'Pick from a selected list of our premium products',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
            ),

            // product list
            SizedBox(
              height: 550,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: products.length,
                padding: const EdgeInsets.all(15),
                itemBuilder: (context, index) {
                  //get each indivaidual product from  shop
                  final Product product = products[index];
                  return MyProductTile(product: product);
                  // return as product tile
                },
              ),
            ),
          ],
        ));
  }
}
