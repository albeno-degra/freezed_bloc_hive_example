import 'package:flutter/material.dart';
import 'package:freezed_bloc_example/app/common/presentation/theme_extensions/stroke_colors.dart';
import 'package:freezed_bloc_example/app/common/presentation/theme_extensions/text_colors.dart';
import 'package:freezed_bloc_example/app/common/presentation/theme_extensions/text_styles.dart';
import 'package:freezed_bloc_example/app/common/presentation/theme_extensions/ui_colors.dart';

class AppTheme {
  static ThemeData light = ThemeData.light().copyWith(
    extensions: const <ThemeExtension<dynamic>>[
      TextColors.light,
      UiColors.light,
      StrokeColors.light,
      AppTextStyles.light,
    ],
    scaffoldBackgroundColor: Colors.white,
    cardTheme: const CardThemeData(
      color: Color(0xFFF7F7F7),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
    ),
  );

  static ThemeData dark = ThemeData.dark().copyWith(
    extensions: const <ThemeExtension<dynamic>>[
      TextColors.dark,
      UiColors.dark,
      StrokeColors.dark,
      AppTextStyles.dark,
    ],
    scaffoldBackgroundColor: const Color(0xFF121212),
    cardTheme: const CardThemeData(
      color: Color(0xFF1C1C1C),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
    ),
  );
}
