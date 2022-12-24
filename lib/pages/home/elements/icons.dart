import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class MyIconButton extends StatelessWidget {
  const MyIconButton({Key? key, required this.onTap, required this.icon})
      : super(key: key);
  final Future onTap;
  final IoniconsData icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
      },
      color: Colors.blue,
      icon: Icon(icon, size: 30),
    );
  }
}
