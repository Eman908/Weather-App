import 'package:flutter/material.dart';
import 'package:weather_app/widgets/background_container.dart';
import 'package:weather_app/widgets/search_field.dart';

class ScearchScreen extends StatelessWidget {
  const ScearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundContainer(
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
