import 'package:flutter/material.dart';
import 'package:weather_app/widgets/border_style.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    super.key,
    required this.onSubmitted,
  });
  final void Function(String)? onSubmitted;
  @override
  Widget build(BuildContext context) {
    return TextField(
      textInputAction: TextInputAction.search,
      onSubmitted: onSubmitted,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white38,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
        labelText: "Search",
        hintText: "Enter City Name",
        suffixIcon: const Icon(Icons.search),
        enabledBorder: borderStyle(context: context),
        focusedBorder: borderStyle(context: context),
      ),
    );
  }
}
