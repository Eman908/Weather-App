import 'package:flutter/material.dart';

AppBar searchAppBar({required BuildContext context}) {
  return AppBar(
    title: const Text("Search a city"),
    titleTextStyle: const TextStyle(color: Colors.white, fontSize: 22),
    iconTheme: const IconThemeData(color: Colors.white),
  );
}
