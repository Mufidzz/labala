import 'package:flutter/material.dart';
import 'package:labala/core/theme/palette.dart';

class CharacterStyle {
  static TextStyle smallest(
      {fontWeight = FontWeight.normal, color = Palette.darker}) {
    return new TextStyle(
      fontFamily: "Poppins",
      fontWeight: fontWeight,
      color: color,
      fontSize: 9,
    );
  }

  static TextStyle small(
      {fontWeight = FontWeight.normal, color = Palette.darker}) {
    return new TextStyle(
      fontFamily: "Poppins",
      fontWeight: fontWeight,
      color: color,
      fontSize: 10,
    );
  }

  static TextStyle normal(
      {fontWeight = FontWeight.normal, color = Palette.darker}) {
    return new TextStyle(
      fontFamily: "Poppins",
      fontWeight: fontWeight,
      color: color,
      fontSize: 12,
    );
  }

  static TextStyle normal2(
      {fontWeight = FontWeight.normal, color = Palette.darker}) {
    return new TextStyle(
      fontFamily: "Poppins",
      fontWeight: fontWeight,
      color: color,
      fontSize: 16,
    );
  }

  static TextStyle medium(
      {fontWeight = FontWeight.normal, color = Palette.darker}) {
    return new TextStyle(
      fontFamily: "Poppins",
      fontWeight: fontWeight,
      color: color,
      fontSize: 14,
    );
  }

  static TextStyle large(
      {fontWeight = FontWeight.normal, color = Palette.darker}) {
    return new TextStyle(
      fontFamily: "Poppins",
      fontWeight: fontWeight,
      color: color,
      fontSize: 24,
    );
  }
}
