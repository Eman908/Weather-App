import 'package:flutter/material.dart';

Color getThemeColor(String? condition) {
  if (condition == null) return Colors.transparent; // Default soft blue

  switch (condition.toLowerCase()) {
    case "sunny":
    case "clear":
      return const Color(0xFFFFD54F); // Soft warm yellow
    case "partly cloudy":
      return const Color(0xFF90CAF9); // Light sky blue
    case "cloudy":
    case "overcast":
      return const Color(0xFFB0BEC5); // Soft grayish-blue
    case "mist":
    case "fog":
      return const Color(0xFFCFD8DC); // Light misty gray
    case "patchy rain possible":
    case "light drizzle":
    case "patchy light rain":
    case "light rain shower":
      return const Color(0xFF64B5F6); // Soft light blue
    case "patchy snow possible":
    case "blowing snow":
    case "light snow showers":
      return const Color(0xFFE3F2FD); // Very light icy blue
    case "patchy sleet possible":
    case "freezing fog":
    case "moderate or heavy sleet showers":
    case "ice pellets":
      return const Color(0xFF80DEEA); // Soft teal
    case "thundery outbreaks possible":
    case "moderate or heavy rain shower":
    case "torrential rain shower":
    case "moderate or heavy rain with thunder":
      return const Color(0xFF9575CD); // Cute lavender purple
    default:
      return const Color(0xFF81D4FA); // Soft blue for unknown weather
  }
}
