import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/screens/scearch_screen.dart';
import 'package:weather_app/widgets/infor_card.dart';

class WeatherInfo extends StatelessWidget {
  const WeatherInfo({required this.weatherModel, super.key});
  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                weatherModel.cityname,
                style: GoogleFonts.rubik(
                    textStyle: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff494A4B))),
              ),
              Text(
                '${weatherModel.temp.toInt()} °C',
                style: GoogleFonts.rubik(
                    textStyle: TextStyle(
                  fontSize: 96,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff494A4B),
                  letterSpacing: -1,
                )),
              ),
              Text(
                weatherModel.weatherCondition,
                style: GoogleFonts.rubik(
                    textStyle: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w300,
                        color: Color(0xff494A4B))),
              ),
              Image.asset('assets/partly-cloudy.png'),
              SizedBox(
                height: 72,
              ),
              InfoCard(weatherModel: weatherModel)
            ],
          ),
        ),
      ),
    );
  }
}
