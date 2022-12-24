import 'package:flutter/material.dart';

myAppBar(context) {
  return AppBar(
    centerTitle: true,
    elevation: 5,
    backgroundColor: Theme.of(context).backgroundColor,
    automaticallyImplyLeading: false,
    title: const Text(
      'Portal Miradouro',
      style: TextStyle(
        color: Colors.blue,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
