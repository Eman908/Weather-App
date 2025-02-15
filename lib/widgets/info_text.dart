import 'package:flutter/material.dart';

Text infoText({
  required String title,
  required double size,
  required FontWeight? fontWeight,
}) {
  return Text(title,
      style: TextStyle(
        fontSize: size,
        fontWeight: fontWeight,
      ));
}
