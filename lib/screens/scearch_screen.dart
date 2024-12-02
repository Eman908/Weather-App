import 'package:flutter/material.dart';
import 'package:weather_app/models/backgound_model.dart';
import 'package:weather_app/widgets/background_container.dart';
import 'package:weather_app/widgets/search_field.dart';

class ScearchScreen extends StatelessWidget {
  ScearchScreen({super.key});
  final backgroundModelWithImage = BackgoundModel(
    image: 'assets/background.png', // No image provided
    color1: const Color(0xff86B9FD),
    color2: const Color(0xffD6E2F9),
  );
  @override
  Widget build(BuildContext context) {
    return BackgroundContainer(
      st: backgroundModelWithImage,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white.withOpacity(0.2),
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: Center(child: SearchField()),
        ),
      ),
    );
  }
}
