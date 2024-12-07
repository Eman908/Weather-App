import 'package:flutter/material.dart';
import 'package:weather_app/models/backgound_model.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/widgets/background_container.dart';
import 'package:weather_app/widgets/weather_info.dart';

class WeatherScreen extends StatelessWidget {
  WeatherScreen({super.key, required this.weatherdata});
  final WeatherModel weatherdata;
  final bc = BackgoundModel(
    image: null,
    color1: const Color.fromARGB(255, 224, 237, 255),
    color2: const Color(0xffF8F9FB),
  );
  @override
  Widget build(BuildContext context) {
    return BackgroundContainer(
      st: bc,
      child: WeatherInfo(weatherModel: weatherdata),
    );
  }
}
