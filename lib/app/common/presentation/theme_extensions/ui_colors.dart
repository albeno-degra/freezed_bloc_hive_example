import 'package:flutter/material.dart';

@immutable
class UiColors extends ThemeExtension<UiColors> {
  const UiColors({
    required this.buttonBackground,
    required this.switchBackground,
  });
  final Color buttonBackground;
  final Color switchBackground;

  @override
  UiColors copyWith({
    Color? buttonBackground,
    Color? switchBackground,
  }) {
    return UiColors(
      buttonBackground: buttonBackground ?? this.buttonBackground,
      switchBackground: switchBackground ?? this.switchBackground,
    );
  }

  @override
  UiColors lerp(ThemeExtension<UiColors>? other, double t) {
    if (other is! UiColors) return this;
    return UiColors(
      buttonBackground: Color.lerp(
        buttonBackground,
        other.buttonBackground,
        t,
      )!,
      switchBackground: Color.lerp(
        switchBackground,
        other.switchBackground,
        t,
      )!,
    );
  }

  static const light = UiColors(
    buttonBackground: Color.fromARGB(255, 183, 182, 182),
    switchBackground: Color.fromARGB(255, 249, 221, 39),
  );

  static const dark = UiColors(
    buttonBackground: Color.fromARGB(255, 96, 87, 87),
    switchBackground: Color.fromARGB(255, 27, 42, 100),
  );
}
