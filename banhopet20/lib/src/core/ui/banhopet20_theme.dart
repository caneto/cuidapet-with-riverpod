import 'package:flutter/material.dart';
import 'package:banhopet20/src/core/ui/constants.dart';

sealed class Banhopet20Theme {
  static const _roundedInputBorder =
      OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20.0)));

  static ThemeData themeData = ThemeData(
      useMaterial3: true,
      fontFamily: FontConstants.fontFamily,
      inputDecorationTheme: const InputDecorationTheme(
        border: _roundedInputBorder,
        enabledBorder: _roundedInputBorder,
        disabledBorder: _roundedInputBorder,
        focusedBorder: _roundedInputBorder,
        errorBorder: _roundedInputBorder,
      ));
}
