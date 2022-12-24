import 'package:flutter/material.dart';

import 'navybar_weather_data.dart';

class NavyBarWeather extends StatefulWidget {
  const NavyBarWeather({Key? key}) : super(key: key);

  @override
  State<NavyBarWeather> createState() => _NavyBarWeatherState();
}

class _NavyBarWeatherState extends State<NavyBarWeather> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
        future: getWeather(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Text(snapshot.data.toString());
          } else if (snapshot.hasError) {
            return const Center(child: Text('Erro ao Carregar dados'));
          } else {
            return const Center(
              child: CircularProgressIndicator(
                strokeWidth: 2.0,
              ),
            );
          }
        },
      ),
    );
  }
}
