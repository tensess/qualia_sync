import 'package:flutter/material.dart';

class MyButtonTheme {
  static ButtonStyle get buttonStyle => ButtonStyle(
        minimumSize: WidgetStateProperty.all<Size>(
          const Size(150, 50),
        ),
        foregroundColor: WidgetStateProperty.all<Color>(Colors.black),
        backgroundColor: WidgetStateProperty.all<Color>(Colors.white),
        textStyle: WidgetStateProperty.all<TextStyle>(
          const TextStyle(
            fontFamily: 'FiraSans',
          ),
        ),
        shape: WidgetStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
            side: const BorderSide(
              color: Colors.black,
              width: 2,
            ),
          ),
        ),
      );
}
