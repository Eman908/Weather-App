class WeatherModel {
  final String cityname;
  final dynamic temp;
  final String cond;
  final dynamic date;
  final dynamic max;
  final dynamic min;
  final String image;

  WeatherModel(
      {required this.cityname,
      required this.cond,
      required this.date,
      required this.image,
      required this.max,
      required this.min,
      required this.temp});
}
