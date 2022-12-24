import 'package:flutter/material.dart';
import 'package:portal_miradouro/models/home_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: const Color(0xff53A7FD),
        primaryColorDark: Colors.black,
        backgroundColor: const Color(0xff53A7FD).withOpacity(0.2),
      ),
      themeMode: ThemeMode.system,
      home: const HomePage(),
    ),
  );
}
