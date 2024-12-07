import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/screens/weather_screen.dart';
import 'package:weather_app/services/weather_service.dart';

class SearchField extends StatelessWidget {
  final TextEditingController controller;

  const SearchField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onSubmitted: (value) async {
        WeatherModel weatherModel =
            await WeatherService().getWeatherInfo(cityName: value);
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return WeatherScreen(weatherdata: weatherModel);
        }));
        log(weatherModel.cityname);
      },
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 14),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.blue, width: 2.5),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: Colors.white,
        prefixIcon: Icon(
          Icons.search,
          color: Colors.grey,
        ),
        hintText: 'Search City',
        hintStyle: GoogleFonts.montserrat(
          textStyle: const TextStyle(
            color: Colors.grey,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}


//  WeatherModel weatherModel =
//             await WeatherService().getWeatherInfo(cityName: value);
//         log(weatherModel.cityname);