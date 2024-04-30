import 'package:flutter/material.dart';

class MyTile extends StatelessWidget {
  const MyTile({super.key, required this.icon, required this.text, this.onTap});
  final IconData icon;
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.grey,
      ),
      title: Text(
        text,
        style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
      ),
      onTap: onTap,
    );
  }
}
