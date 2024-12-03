import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/screens/weather_screen.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
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
        padding: WidgetStatePropertyAll(EdgeInsets.symmetric(vertical: 14)),
        shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
        elevation: WidgetStatePropertyAll(6),
        shadowColor: WidgetStatePropertyAll(Colors.black.withOpacity(0.1)),
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
    );
  }
}
