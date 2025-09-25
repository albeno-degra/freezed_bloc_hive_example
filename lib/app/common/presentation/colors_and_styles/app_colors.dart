// lib/theme/app_colors.dart
import 'package:flutter/material.dart';
import 'package:freezed_bloc_example/app/common/presentation/theme_extensions/stroke_colors.dart';
import 'package:freezed_bloc_example/app/common/presentation/theme_extensions/text_colors.dart';
import 'package:freezed_bloc_example/app/common/presentation/theme_extensions/ui_colors.dart';

extension CustomThemeContext on BuildContext {
  TextColors? get textColors => Theme.of(this).extension<TextColors>();
  UiColors? get uiColors => Theme.of(this).extension<UiColors>();
  StrokeColors? get strokeColors => Theme.of(this).extension<StrokeColors>();
}
