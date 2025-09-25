import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:freezed_bloc_example/app/common/domain/use_case.dart';
import 'package:freezed_bloc_example/features/theme_flexing/data/models/theme_model.dart';
import 'package:freezed_bloc_example/features/theme_flexing/domain/entities/app_theme.dart';
import 'package:freezed_bloc_example/features/theme_flexing/domain/usecases/load_theme.dart';
import 'package:freezed_bloc_example/features/theme_flexing/domain/usecases/set_theme.dart';

part 'theme_flexing_cubit.freezed.dart';
part 'theme_flexing_state.dart';

class ThemeFlexingCubit extends Cubit<ThemeFlexingState> {
  ThemeFlexingCubit({required LoadTheme loadTheme, required SetTheme setTheme})
    : _loadTheme = loadTheme,
      _setTheme = setTheme,
      super(const ThemeFlexingState.initial());

  final LoadTheme _loadTheme;
  final SetTheme _setTheme;

  Future<void> init() async {
    try {
      final theme = await _loadTheme(const NoParams());
      emit(
        theme.brightness == Brightness.dark
            ? ThemeFlexingState.dark(themeData: theme)
            : ThemeFlexingState.light(themeData: theme),
      );
    } on Object catch (_) {
      emit(ThemeFlexingState.light(themeData: AppTheme.light));
    }
  }

  void toggleTheme() {
    final newThemeMode = state.maybeWhen(
      light: (_) => ThemeModeType.dark,
      dark: (_) => ThemeModeType.light,
      orElse: () => ThemeModeType.light,
    );

    final newThemeData = newThemeMode == ThemeModeType.dark
        ? AppTheme.dark
        : AppTheme.light;

    emit(
      newThemeMode == ThemeModeType.dark
          ? ThemeFlexingState.dark(themeData: newThemeData)
          : ThemeFlexingState.light(themeData: newThemeData),
    );

    _setTheme(SetThemeParams(themeMode: newThemeMode));
  }
}
