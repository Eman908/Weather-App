class WeatherModel {
  final String cityname;
  final double temp;
  final String weatherCondition;
  final String date;
  final double maxTemp;
  final double minTemp;
  final String? image;

  WeatherModel(
      {this.image,
      required this.cityname,
      required this.weatherCondition,
      required this.date,
      required this.maxTemp,
      required this.minTemp,
      required this.temp});

  factory WeatherModel.fromJson(json) {
    return WeatherModel(
        image: json['forecast']['forecastday'][0]['day']['condition']['icon'],
        cityname: json['location']['name'],
        weatherCondition: json['forecast']['forecastday'][0]['day']['condition']
            ['text'],
        date: json['current']['last_updated'],
        maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
        minTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
        temp: json['forecast']['forecastday'][0]['day']['avgtemp_c']);
  }
}
