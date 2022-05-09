import 'package:flutter/material.dart';
import 'package:weatherapp/views/currentWeather.dart';
import 'package:weatherapp/views/todayWeather.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff030317),
      body: Column(
        children: const [CurrentWeather(), TodayWeather()],
      ),
    );
  }
}
