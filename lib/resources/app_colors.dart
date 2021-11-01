import 'package:flutter/material.dart';

abstract class AppColors {
  // Color Sets

  static const Color black = Colors.black;
  static const Color white = Colors.white;
  static const Color tuna = Color(0xFF363A44);
  static const Color tunaWithOpacity = Color(0x66363A44);
  static const Color subTitleColor = Color(0xA6000000);
  static const Color secondaryColor = Color(0x80000000);
  static const Color mercury = Color(0xFFE5E5E5);
  static const Color red = Colors.red;
}

Color darken(Color color, [double amount = .1]) {
  assert(amount >= 0 && amount <= 1);

  final hsl = HSLColor.fromColor(color);
  final hslDark = hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));

  return hslDark.toColor();
}

Color lighten(Color color, [double amount = .1]) {
  assert(amount >= 0 && amount <= 1);

  final hsl = HSLColor.fromColor(color);
  final hslLight = hsl.withLightness((hsl.lightness + amount).clamp(0.0, 1.0));

  return hslLight.toColor();
}
