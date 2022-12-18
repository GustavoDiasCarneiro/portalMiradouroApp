import 'package:flutter/material.dart';
import 'package:portal_miradouro/models/home_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      themeMode: ThemeMode.system,
      home: const HomePage(),
    ),
  );
}
