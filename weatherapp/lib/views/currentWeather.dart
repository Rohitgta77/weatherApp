import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:weatherapp/models/weather.dart';
import 'package:weatherapp/views/extraWeather.dart';

class CurrentWeather extends StatelessWidget {
  const CurrentWeather({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlowContainer(
      height: MediaQuery.of(context).size.height - 230,
      margin: const EdgeInsets.all(2),
      padding: const EdgeInsets.only(top: 50, right: 30, left: 30),
      glowColor: const Color(0xff00A1ff).withOpacity(.5),
      borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(60), bottomLeft: Radius.circular(60)),
      color: const Color(0xFF00A1FF),
      spreadRadius: 5,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                CupertinoIcons.square_grid_2x2,
                color: Colors.white,
              ),
              Row(
                children: [
                  const Icon(
                    CupertinoIcons.map_fill,
                    color: Colors.white,
                  ),
                  Text(
                    " " + currentTemp.location!,
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Icon(
                Icons.more_vert,
                color: Colors.white,
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border.all(width: 0.2, color: Colors.white),
                borderRadius: BorderRadius.circular(30)),
            child: const Text(
              "Updating",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Image(
            image: AssetImage(currentTemp.image!),
            fit: BoxFit.fill,
          ),
          Center(
              child: Column(
            children: [
              GlowText(
                "${currentTemp.current!}",
                style: const TextStyle(
                    fontSize: 150, height: 0.1, fontWeight: FontWeight.bold),
              ),
              Text(
                currentTemp.name!,
                style: const TextStyle(fontSize: 25),
              ),
              Text(
                currentTemp.day!,
                style: const TextStyle(fontSize: 18),
              )
            ],
          )),
          const Divider(color: Colors.white),
          const SizedBox(height: 10),
          ExtraWeather(weather: currentTemp)
        ],
      ),
    );
  }
}
