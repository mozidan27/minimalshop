import 'package:flutter/material.dart';
import 'package:provider/widgets/my_buttton.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
            Icon(
              Icons.shopping_bag_outlined,
              color: Theme.of(context).colorScheme.inversePrimary,
              size: 100,
            ),
            const SizedBox(
              height: 25,
            ),

            // title
            const Text(
              'Minimal Shop',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            // subtitle
            Text(
              'Made with love using flutter',
              style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  fontSize: 18),
            ),
            const SizedBox(
              height: 25,
            ),
            // buttom

            MyButton(
              child: const Icon(Icons.arrow_forward),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
