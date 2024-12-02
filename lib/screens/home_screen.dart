import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/screens/weather_screen.dart';
import 'package:weather_app/widgets/background_container.dart';
import 'package:weather_app/widgets/search_field.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundContainer(
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
                      builder: (context) =>
                          const WeatherScreen(), // Passing the model to the new screen
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
