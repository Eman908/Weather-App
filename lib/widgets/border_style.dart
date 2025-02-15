import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/models/get_theme_color.dart';

OutlineInputBorder borderStyle({required BuildContext context}) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(
      color: getThemeColor(BlocProvider.of<GetWeatherCubit>(context)
          .weatherModel
          ?.weatherCondition),
    ),
  );
}
