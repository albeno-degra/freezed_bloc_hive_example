import 'package:flutter/material.dart';
import 'package:freezed_bloc_example/app/common/domain/use_case.dart';
import 'package:freezed_bloc_example/features/theme_flexing/domain/repositories/theme_repo.dart';

class LoadTheme extends UseCase<ThemeData, NoParams> {
  LoadTheme({required ThemeRepo source}) : _source = source;

  final ThemeRepo _source;

  @override
  Future<ThemeData> call(NoParams params) => _source.getThemeData();
}
