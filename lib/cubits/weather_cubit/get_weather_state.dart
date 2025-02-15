import 'package:weather_app/models/weather_model.dart';

sealed class GetWeatherState {}

final class GetWeatherInitial extends GetWeatherState {}

final class WeatherLoadedState extends GetWeatherState {
  final WeatherModel weatherModel;
  WeatherLoadedState({required this.weatherModel});
}

final class WeatherFailuerState extends GetWeatherState {
  final String errorMessage;
  WeatherFailuerState({required this.errorMessage});
}

final class LoadingState extends GetWeatherState {}
