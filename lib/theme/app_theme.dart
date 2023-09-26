import 'package:flutter/material.dart';
import 'package:sayakat/theme/app_colors.dart';

final lightTheme = ThemeData.light().copyWith(
  primaryColor: AppColors.color65C130,
  scaffoldBackgroundColor: AppColors.colorF6F6F6,
  highlightColor: Colors.transparent,
  splashColor: Colors.transparent,
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.colorF6F6F6,
  ),
);
