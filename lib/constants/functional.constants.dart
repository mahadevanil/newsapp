import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

//--------------------(store data)
  Future<void> storeData({
    required PreferenceType type,
    required String key,
    required dynamic value,
  }) async {
    final pref = await SharedPreferences.getInstance();

    switch (type) {
      case PreferenceType.string:
        if (value is String) {
          await pref.setString(key, value);
        }
        break;
      case PreferenceType.list:
        if (value is List<String>) {
          await pref.setStringList(key, value);
        }
        break;
    }
  }

  Future<void> deleteData() async {
    final pref = await SharedPreferences.getInstance();
    await pref.clear();
  }

  //-------------------(retrieve data )
  Future<dynamic> retrieveData({
    required PreferenceType type,
    required String key,
  }) async {
    final pref = await SharedPreferences.getInstance();

    switch (type) {
      case PreferenceType.string:
        return pref.getString(key) ?? '';
      case PreferenceType.list:
        return pref.getStringList(key) ?? [];
    }
  }

  //----------validator
  String? nameValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your name';
    }

    // Check if the name is at least 2 characters long
    if (value.length < 2) {
      return 'Name must be at least 2 characters long';
    }

    return null;
  }

  Future<Position> determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Check if location services are enabled
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled
      return Future.error('Location services are disabled.');
    }

    // Check for permission
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied.');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
        'Location permissions are permanently denied, we cannot request permissions.',
      );
    }

    return await Geolocator.getCurrentPosition();
  }

  //greetings
  String getGreetingMessage(String userName) {
    final hour = DateTime.now().hour;
    if (hour < 12) {
      return 'Good morning, $userName';
    } else if (hour < 17) {
      return 'Good afternoon, $userName';
    } else {
      return 'Good evening, $userName';
    }
  }

  String listToCommaSeparatedString(List<String> list) {
    return list.join(',');
  }
}
