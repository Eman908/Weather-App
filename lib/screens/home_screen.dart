import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/weather_cubit/get_weather_state.dart';
import 'package:weather_app/screens/search_screen.dart';
import 'package:weather_app/widgets/app_bar.dart';
import 'package:weather_app/widgets/no_weather_body.dart';
import 'package:weather_app/widgets/weather_info_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetWeatherCubit, GetWeatherState>(
      builder: (context, state) {
        if (state is WeatherFailuerState) {
          Future.microtask(() {
            if (context.mounted) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: Colors.red,
                  content: Text(state.errorMessage),
                ),
              );

              Future.delayed(const Duration(seconds: 2), () {
                if (context.mounted) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const SearchScreen(),
                    ),
                  );
                }
              });
            }
          });
        }

        return Scaffold(
          appBar: mainAppBar(title: 'Weather App', context: context),
          extendBodyBehindAppBar: true,
          body: (state is WeatherLoadedState)
              ? const WeatherInfoBody()
              : (state is WeatherFailuerState)
                  ? const Center(
                      child: Text(
                        "Failed to fetch weather",
                        style: TextStyle(color: Colors.red, fontSize: 18),
                      ),
                    )
                  : (state is GetWeatherInitial)
                      ? const NoWeatherBody()
                      : const Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
}
