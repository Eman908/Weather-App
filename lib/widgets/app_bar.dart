import 'package:flutter/material.dart';
import 'package:weather_app/screens/search_screen.dart';

AppBar mainAppBar({required BuildContext context, required String title}) {
  return AppBar(
    title: Text(title),
    titleTextStyle: const TextStyle(color: Colors.white, fontSize: 22),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 8),
        child: IconButton(
          icon: const Icon(Icons.search, color: Colors.white),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const SearchScreen(),
            ));
          },
        ),
      )
    ],
    automaticallyImplyLeading: false,
  );
}
