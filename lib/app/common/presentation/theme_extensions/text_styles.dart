import 'package:flutter/material.dart';

@immutable
class AppTextStyles extends ThemeExtension<AppTextStyles> {
  const AppTextStyles({
    required this.title,
    required this.body,
    required this.caption,
  });
  final TextStyle title;
  final TextStyle body;
  final TextStyle caption;

  @override
  AppTextStyles copyWith({
    TextStyle? title,
    TextStyle? body,
    TextStyle? caption,
  }) {
    return AppTextStyles(
      title: title ?? this.title,
      body: body ?? this.body,
      caption: caption ?? this.caption,
    );
  }

  @override
  AppTextStyles lerp(ThemeExtension<AppTextStyles>? other, double t) {
    if (other is! AppTextStyles) return this;

    return AppTextStyles(
      title: TextStyle.lerp(title, other.title, t)!,
      body: TextStyle.lerp(body, other.body, t)!,
      caption: TextStyle.lerp(caption, other.caption, t)!,
    );
  }

  static const light = AppTextStyles(
    title: TextStyle(
      fontSize: 20,
      color: Colors.black,
    ),
    body: TextStyle(
      fontSize: 18,
      color: Colors.black87,
    ),
    caption: TextStyle(
      fontSize: 16,
      color: Colors.grey,
    ),
  );

  static const dark = AppTextStyles(
    title: TextStyle(
      fontSize: 20,
      color: Colors.white,
    ),
    body: TextStyle(
      fontSize: 18,
      color: Colors.white70,
    ),
    caption: TextStyle(
      fontSize: 16,
      color: Colors.grey,
    ),
  );
}
