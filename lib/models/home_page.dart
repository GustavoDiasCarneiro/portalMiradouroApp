import 'package:flutter/material.dart';
import '../pages/home/elements/bottom_navy_bar.dart';
import '../pages/home/elements/my_app_bar.dart';
import '../pages/home/models/navybar_home.dart';
import '../pages/weather/navybar_weather.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  void changePage(int? index) {
    setState(() {
      currentIndex = index!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Scaffold(
            backgroundColor: Colors.white,
            bottomNavigationBar: myNavyBar(context,
                currentIndex: currentIndex, changePage: changePage),
            appBar: myAppBar(context),
            body: <Widget>[
              const NavyBarHome(),
              const NavyBarWeather(),
              Container(color: Colors.green),
              Container(color: Colors.orange),
            ][currentIndex]));
  }
}
