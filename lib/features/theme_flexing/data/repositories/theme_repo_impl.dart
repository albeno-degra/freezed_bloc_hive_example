import 'package:flutter/material.dart';
import 'package:freezed_bloc_example/app/common/data/local_datasource.dart';
import 'package:freezed_bloc_example/features/theme_flexing/data/models/theme_model.dart';
import 'package:freezed_bloc_example/features/theme_flexing/domain/entities/app_theme.dart';
import 'package:freezed_bloc_example/features/theme_flexing/domain/repositories/theme_repo.dart';

class ThemeRepoImpl implements ThemeRepo {
  final LocalDatasource<ThemeModel> local;

  ThemeRepoImpl({required this.local});

  @override
  Future<ThemeData> getThemeData() async {
    final themeModel = await local.get();
    if (themeModel == null) {
      return AppTheme.light;
    }
    return themeModel.themeMode == ThemeModeType.dark
        ? AppTheme.dark
        : AppTheme.light;
  }

  @override
  Future<void> saveTheme(ThemeModel theme) async {
    await local.save(theme);
  }
}
