import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/models/backgound_model.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/screens/weather_screen.dart';
import 'package:weather_app/widgets/background_container.dart';
import 'package:weather_app/widgets/search_field.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final weatherdata = WeatherModel(
      cityname: 'Tokyo',
      cond: 'Mostly Sunny',
      date: 'Updated 23,-203',
      image: 'assets/partly-cloudy.png',
      max: '25°C',
      min: '25°C',
      temp: '25°C');
  final backgroundModelWithImage = BackgoundModel(
    image: 'assets/background.png',
    color1: const Color(0xff86B9FD),
    color2: const Color(0xffD6E2F9),
  );
  @override
  Widget build(BuildContext context) {
    return BackgroundContainer(
      st: backgroundModelWithImage,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WeatherScreen(
                        wt: weatherdata,
                      ), // Passing the model to the new screen
                    ),
                  );
                },
                child: Text(
                  'Never get caught\nin the rain again',
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                      color: Color(0xff494A4B),
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      height: 1.3,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),

              // Subheading
              Text(
                'Stay ahead of the weather with our\naccurate forecasts',
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    color: Color(0xff494A4B),
                    fontSize: 18,
                    height: 1.3,
                  ),
                ),
              ),
              const SizedBox(height: 48),

              // Search TextField
              const SearchField(),
            ],
          ),
        ),
      ),
    );
  }
}
