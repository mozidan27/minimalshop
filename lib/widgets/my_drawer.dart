import 'package:flutter/material.dart';
import 'package:minimalshop/widgets/my_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // logo

            Column(
              children: [
                DrawerHeader(
                  child: Icon(
                    Icons.shopping_bag_outlined,
                    color: Theme.of(context).colorScheme.inversePrimary,
                    size: 80,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                //shop tile
                MyTile(
                  icon: Icons.home,
                  text: 'Home',
                  onTap: () => Navigator.pop(context),
                ),
                // cart tile
                MyTile(
                  icon: Icons.shopping_cart,
                  text: 'Cart',
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/cart_page');
                  },
                ),
              ],
            ),
            // exit
            Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: MyTile(
                icon: Icons.logout,
                text: 'Exit',
                onTap: () => Navigator.pushNamed(context, '/welcome_page'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
