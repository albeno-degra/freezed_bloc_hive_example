import 'dart:async';

abstract class DbClient {
  /// Local database application client constructor
  Future<void> init();

  /// Save a value in the local database
  Future<void> save<T>(String key, T value);

  /// Get a value from the local database (Box or LazyBox)
  FutureOr<T?> get<T>(String key);

  /// Clear the local database
  Future<void> clear<T>();
}
