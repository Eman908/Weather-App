import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/models/backgound_model.dart';
import 'package:weather_app/screens/weather_screen.dart';
import 'package:weather_app/widgets/background_container.dart';
import 'package:weather_app/widgets/search_field.dart';

class ScearchScreen extends StatelessWidget {
  ScearchScreen({super.key});
  final bc = BackgoundModel(
    image: 'assets/background.png', // No image provided
    color1: const Color(0xff86B9FD),
    color2: const Color(0xffD6E2F9),
  );
  @override
  Widget build(BuildContext context) {
    return BackgroundContainer(
      st: bc,
      child: Scaffold(
          extendBodyBehindAppBar: true,
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white.withOpacity(0.2),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SearchField(),
                SizedBox(
                  height: 24,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            WeatherScreen(), // Passing the model to the new screen
                      ),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Color(0xFF0370FD)),
                    padding: WidgetStatePropertyAll(
                        EdgeInsets.symmetric(vertical: 14)),
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                    elevation: WidgetStatePropertyAll(6),
                    shadowColor:
                        WidgetStatePropertyAll(Colors.black.withOpacity(0.1)),
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        'Search',
                        style: GoogleFonts.rubik(
                            textStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
