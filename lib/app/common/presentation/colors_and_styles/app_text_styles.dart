import 'package:flutter/material.dart';
import 'package:freezed_bloc_example/app/common/presentation/theme_extensions/text_styles.dart';

extension CustomTextStylesContext on BuildContext {
  AppTextStyles get textStyles => Theme.of(this).extension<AppTextStyles>()!;
}
