import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'use_case.freezed.dart';

/// UseCase class to handle business logic
abstract class UseCase<T, Params> {
  /// Call function
  FutureOr<T> call(Params params);
}

/// Parameters of UseCase
abstract class Params {}

@freezed
/// Without any parameters of UseCase
class NoParams extends Params with _$NoParams {
  const factory NoParams() = _NoParams;
}
