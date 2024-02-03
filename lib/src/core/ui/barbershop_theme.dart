import 'package:dw_barbershop/src/core/ui/constants.dart';
import 'package:flutter/material.dart';

sealed class BarbershopTheme {
  static const _defaultINputBorder =
      OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8)));

  static ThemeData themeData = ThemeData(
      useMaterial3: true,
      appBarTheme: const AppBarTheme(
          centerTitle: true,
          iconTheme: IconThemeData(color: ColorsConstants.brow),
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
              color: Colors.black,
              fontFamily: FontConstants.fontfamily)),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        labelStyle: const TextStyle(color: ColorsConstants.grey),
        border: _defaultINputBorder,
        enabledBorder: _defaultINputBorder,
        focusedBorder: _defaultINputBorder,
        errorBorder: _defaultINputBorder.copyWith(
          borderSide: const BorderSide(color: ColorsConstants.red),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: ColorsConstants.brow,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      fontFamily: FontConstants.fontfamily);
}
