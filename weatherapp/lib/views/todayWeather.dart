import 'package:flutter/material.dart';
import 'package:weatherapp/models/weather.dart';
import 'package:weatherapp/views/deatilsWeather.dart';
import 'package:weatherapp/views/weatherWidget.dart';

class TodayWeather extends StatelessWidget {
  const TodayWeather({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30, left: 30, top: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Today",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return DetailsWeather();
                    },
                  ));
                },
                child: Row(
                  children: const [
                    Text(
                      "7",
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                      size: 15,
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                WeatherWidget(weather: todayWeather[0]),
                WeatherWidget(weather: todayWeather[1]),
                WeatherWidget(weather: todayWeather[2]),
                WeatherWidget(weather: todayWeather[3]),
              ],
            ),
          )
        ],
      ),
    );
  }
}
