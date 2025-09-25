import 'package:flutter/material.dart';

@immutable
class StrokeColors extends ThemeExtension<StrokeColors> {
  const StrokeColors({
    required this.primaryActive,
    required this.primaryNonActive,
    required this.secondary,
  });
  final Color primaryActive;
  final Color primaryNonActive;
  final Color secondary;

  @override
  StrokeColors copyWith({
    Color? primaryActive,
    Color? primaryNonActive,
    Color? secondary,
  }) {
    return StrokeColors(
      primaryActive: primaryActive ?? this.primaryActive,
      primaryNonActive: primaryNonActive ?? this.primaryNonActive,
      secondary: secondary ?? this.secondary,
    );
  }

  @override
  StrokeColors lerp(ThemeExtension<StrokeColors>? other, double t) {
    if (other is! StrokeColors) return this;
    return StrokeColors(
      primaryActive: Color.lerp(primaryActive, other.primaryActive, t)!,
      primaryNonActive: Color.lerp(
        primaryNonActive,
        other.primaryNonActive,
        t,
      )!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
    );
  }

  static const light = StrokeColors(
    primaryActive: Colors.black,
    primaryNonActive: Colors.grey,
    secondary: Color.fromARGB(255, 58, 51, 51),
  );

  static const dark = StrokeColors(
    primaryActive: Colors.white,
    primaryNonActive: Colors.grey,
    secondary: Color.fromARGB(255, 234, 201, 201),
  );
}
