import 'package:flutter/material.dart';
import 'package:weather_app/models/backgound_model.dart';

class BackgroundContainer extends StatelessWidget {
  final Widget child;
  final BackgoundModel st;

  const BackgroundContainer({super.key, required this.child, required this.st});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: st.image != null
            ? DecorationImage(
                image: AssetImage(st.image!),
                fit: BoxFit.cover,
              )
            : null,
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: <Color>[st.color1, st.color2],
        ),
      ),
      child: child,
    );
  }
}
