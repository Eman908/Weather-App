import 'package:flutter/material.dart';
import 'package:weather_app/models/backgound_model.dart';
import 'package:weather_app/screens/scearch_screen.dart';
import 'package:weather_app/widgets/background_container.dart';

class WeatherScreen extends StatelessWidget {
  WeatherScreen({super.key});

  final backgroundModelWithoutImage = BackgoundModel(
    image: null,
    color1: const Color(0xffC9D5E5),
    color2: const Color(0xffF8F9FB),
  );
  @override
  Widget build(BuildContext context) {
    return BackgroundContainer(
      st: backgroundModelWithoutImage,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          // automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            IconButton(
              icon: const Icon(Icons.search, color: Color(0xff494A4B)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ScearchScreen(), //
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
