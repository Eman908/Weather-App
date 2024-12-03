import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/models/weather_model.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    super.key,
    required this.wt,
  });

  final WeatherModel wt;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      elevation: 6,
      shadowColor: Colors.black26,
      borderRadius: BorderRadius.circular(24),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 16),
        child: Column(
          children: [
            Text(
              wt.date,
              style: GoogleFonts.rubik(
                  textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      color: Color(0xff494A4B))),
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      'Max',
                      style: GoogleFonts.rubik(
                          textStyle: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff8E8E8E))),
                    ),
                    Text(
                      wt.max,
                      style: GoogleFonts.rubik(
                          textStyle: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff494A4B))),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Min',
                      style: GoogleFonts.rubik(
                          textStyle: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff8E8E8E))),
                    ),
                    Text(
                      wt.min,
                      style: GoogleFonts.rubik(
                          textStyle: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff494A4B))),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
