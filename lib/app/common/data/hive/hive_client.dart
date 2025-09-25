import 'dart:async';

import 'package:freezed_bloc_example/app/common/data/db_client.dart';
import 'package:freezed_bloc_example/features/theme_flexing/data/models/theme_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

/// Local Hive database application client
class HiveClient implements DbClient {
  HiveClient();

  /// Theme box
  late Box<ThemeModel> _themeBox;

  /// Initialize the local Hive database
  @override
  Future<void> init() async {
    await Hive.initFlutter();
    Hive
      ..registerAdapter(ThemeModeTypeAdapter())
      ..registerAdapter(ThemeModelAdapter());
    _themeBox = await Hive.openBox<ThemeModel>('themeBox');
  }

  /// Save a value in the local database
  @override
  Future<void> save<T>(String key, T value) async {
    final BoxBase<T> box = _getBox<T>();
    await box.put(key, value);
  }

  /// Get a value from the local database (Box or LazyBox)
  @override
  FutureOr<T?> get<T>(String key) async {
    if (T == ThemeModel) {
      return (_getBox<T>() as Box<T>).get(key);
    }
    // if (T == SomeOtherModelWithLazyBox) {
    //   return (_getBox<T>() as LazyBox<T>).get(key);
    // }
    return null;
  }

  /// Clear the local database
  @override
  Future<void> clear<T>() async {
    final BoxBase<T> box = _getBox<T>();
    await box.clear();
  }

  BoxBase<T> _getBox<T>() {
    if (T == ThemeModel) {
      return _themeBox as Box<T>;
    }
    // if (T == SomeOtherModelWithLazyBox) {
    //   return _someOtherBox as LazyBox<T>;
    // }
    throw Exception('Box for type $T not found');
  }
}
