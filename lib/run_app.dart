import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/weather_cubit/get_weather_state.dart';
import 'package:weather_app/models/get_theme_color.dart';
import 'package:weather_app/screens/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => GetWeatherCubit(),
        child: BlocBuilder<GetWeatherCubit, GetWeatherState>(
          builder: (context, state) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                  appBarTheme: AppBarTheme(
                backgroundColor: getThemeColor(
                    BlocProvider.of<GetWeatherCubit>(context)
                        .weatherModel
                        ?.weatherCondition),
              )),
              home: const HomeScreen(),
            );
          },
        ));
  }
}
