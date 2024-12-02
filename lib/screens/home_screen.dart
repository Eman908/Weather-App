import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/background.png'),
          fit: BoxFit.cover,
        ),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: <Color>[Color(0xff86B9FD), Color(0xffD6E2F9)],
        ),
      ),
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
              Material(
                elevation: 6,
                shadowColor: Colors.black26,
                borderRadius: BorderRadius.circular(8),
                child: TextField(
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: const Icon(Icons.search, color: Colors.grey),
                    hintText: 'Search City',
                    hintStyle: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 14, horizontal: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
