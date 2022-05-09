import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weatherapp/models/weather.dart';

class ExtraWeather extends StatelessWidget {
  final Weather weather;
  const ExtraWeather({Key? key, required this.weather}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        windWidget(),
        humidityWidget(),
        rainWidget(),
      ],
    );
  }

  Column windWidget() {
    return Column(
      children: [
        const Icon(
          CupertinoIcons.wind,
          color: Colors.white,
        ),
        Text(
          "${weather.wind} km/h",
          style: const TextStyle(fontWeight: FontWeight.w700),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Wind",
          style: TextStyle(color: Colors.black54, fontSize: 16),
        )
      ],
    );
  }

  Column humidityWidget() {
    return Column(
      children: [
        const Icon(
          CupertinoIcons.drop,
          color: Colors.white,
        ),
        Text(
          "${weather.humidity} %",
          style: const TextStyle(fontWeight: FontWeight.w700),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Humidity",
          style: TextStyle(color: Colors.black54, fontSize: 16),
        )
      ],
    );
  }

  Column rainWidget() {
    return Column(
      children: [
        const Icon(
          CupertinoIcons.cloud_rain,
          color: Colors.white,
        ),
        Text(
          "${weather.chanceRain} %",
          style: const TextStyle(fontWeight: FontWeight.w700),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Rain",
          style: TextStyle(color: Colors.black54, fontSize: 16),
        )
      ],
    );
  }
}
