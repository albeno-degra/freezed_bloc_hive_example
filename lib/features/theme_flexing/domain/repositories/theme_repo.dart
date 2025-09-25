import 'package:flutter/material.dart';
import 'package:freezed_bloc_example/features/theme_flexing/data/models/theme_model.dart';

abstract class ThemeRepo {
  /// Save Theme
  Future<void> saveTheme(ThemeModel theme);

  /// Get Theme
  Future<ThemeData> getThemeData();
}
