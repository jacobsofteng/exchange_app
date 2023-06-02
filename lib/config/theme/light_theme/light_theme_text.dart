import 'package:flutter/material.dart';

import '../app_color_scheme.dart';
import '../app_text_theme.dart';

class LightThemeText extends AppTextTheme {
  @override
  TextStyle get appBarTitleTextStyle => const TextStyle(
        fontSize: 28,
        color: AppColorScheme.haiti,
        fontWeight: FontWeight.w700,
      );

  @override
  TextStyle get codeTextStyle => const TextStyle(
        fontSize: 18,
        color: AppColorScheme.haiti,
        fontWeight: FontWeight.w500,
      );

  @override
  TextStyle get currencyCodeTextStyle => const TextStyle(
        fontSize: 16,
        color: AppColorScheme.haiti,
        fontWeight: FontWeight.w400,
      );

  @override
  TextStyle get latestRateTextStyle => const TextStyle(
        fontSize: 16,
        color: AppColorScheme.haiti,
        fontWeight: FontWeight.w400,
      );

  @override
  TextStyle get locationTextStyle => const TextStyle(
        fontSize: 18,
        color: AppColorScheme.haiti,
        fontWeight: FontWeight.w500,
      );
}
