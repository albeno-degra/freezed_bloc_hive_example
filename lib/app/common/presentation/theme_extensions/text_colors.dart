import 'package:flutter/material.dart';

@immutable
class TextColors extends ThemeExtension<TextColors> {
  const TextColors({
    required this.primaryText,
    required this.secondaryText,
  });
  final Color primaryText;
  final Color secondaryText;

  @override
  TextColors copyWith({
    Color? primaryText,
    Color? secondaryText,
  }) {
    return TextColors(
      primaryText: primaryText ?? this.primaryText,
      secondaryText: secondaryText ?? this.secondaryText,
    );
  }

  @override
  TextColors lerp(ThemeExtension<TextColors>? other, double t) {
    if (other is! TextColors) return this;
    return TextColors(
      primaryText: Color.lerp(primaryText, other.primaryText, t)!,
      secondaryText: Color.lerp(secondaryText, other.secondaryText, t)!,
    );
  }

  static const light = TextColors(
    primaryText: Colors.black,
    secondaryText: Colors.grey,
  );

  static const dark = TextColors(
    primaryText: Colors.white,
    secondaryText: Colors.grey,
  );
}
