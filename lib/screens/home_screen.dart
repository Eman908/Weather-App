import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/models/backgound_model.dart';
import 'package:weather_app/widgets/background_container.dart';
import 'package:weather_app/widgets/search_button.dart';
import 'package:weather_app/widgets/search_field.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final TextEditingController controller = TextEditingController();

  final BackgoundModel bc = BackgoundModel(
    image: 'assets/background.png',
    color1: const Color(0xff86B9FD),
    color2: const Color(0xffD6E2F9),
  );
  @override
  Widget build(BuildContext context) {
    return BackgroundContainer(
      st: bc,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
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
              SearchField(
                controller: controller,
              ),
              SizedBox(
                height: 24,
              ),
              SearchButton(
                controller: controller,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
