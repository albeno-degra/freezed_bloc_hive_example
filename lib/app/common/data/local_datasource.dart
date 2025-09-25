import 'dart:async';

/// Local datasource
abstract class LocalDatasource<T> {
  /// Save data to db
  Future<void> save(T instance);

  /// Get data from local db
  FutureOr<T?> get();
}
