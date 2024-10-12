import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/enums.dart';

class FunctionalConstants {
  ThemeData? setTheme({
    ThemeType? themeType,
  }) {
    if (themeType == ThemeType.dark) {
      return ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.blue,
        textTheme: const TextTheme(
          bodyLarge:
              TextStyle(color: Colors.black), // Text color for light theme
          bodyMedium: TextStyle(color: Colors.black),
          bodySmall: TextStyle(color: Colors.black),
        ),
      );
    } else {
      return ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.grey,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.black),
          bodySmall: TextStyle(color: Colors.black),
        ),
      );
    }
  }

  TextInputFormatter textInputFormatter(TextFormatType type) {
    switch (type) {
      case TextFormatType.alphabet:
        return FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z\s]'));
      case TextFormatType.number:
        return FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d{0,2}'));
      default:
        return FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z\s]'));
    }
  }
}
