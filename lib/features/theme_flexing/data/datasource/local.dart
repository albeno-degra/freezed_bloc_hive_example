import 'dart:async';

import 'package:freezed_bloc_example/app/common/data/db_client.dart';
import 'package:freezed_bloc_example/app/common/data/local_datasource.dart';
import 'package:freezed_bloc_example/features/theme_flexing/data/models/theme_model.dart';

/// Themes Local Datasource implementation
class ThemeLocalDataImpl implements LocalDatasource<ThemeModel> {
  /// Themes Local Datasource implementation constructor
  const ThemeLocalDataImpl({required DbClient dbClient}) : _dbClient = dbClient;

  /// Local database
  final DbClient _dbClient;

  static const String _themeKey = 'currentTheme';
  @override
  Future<void> save(ThemeModel instance) async {
    await _dbClient.save(_themeKey, instance);
  }

  @override
  FutureOr<ThemeModel?> get() {
    return _dbClient.get<ThemeModel>(_themeKey);
  }
}
