import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/screens/home_screen.dart';
import 'package:weather_app/widgets/search_box.dart';

class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Color(0xff86B9FD), Color(0xffD6E2F9)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
        image: DecorationImage(
          image: AssetImage("assets/background.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Never get caught in the rain again.',
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff494A4B),
                  fontFamily: "Times New Roman"),
            ),
            const Text(
              'Stay ahead of the weather with our accurate forecasts',
              style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff494A4B),
                  fontFamily: "Times New Roman"),
            ),
            const SizedBox(height: 32),
            SearchBox(
              onSubmitted: (value) {
                BlocProvider.of<GetWeatherCubit>(context)
                    .getWeatherCubit(cityName: value);
                if (context.mounted) {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const HomeScreen()));
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
