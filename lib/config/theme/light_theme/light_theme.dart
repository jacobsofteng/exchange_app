import '../app_colors.dart';
import '../app_text_theme.dart';
import '../app_theme.dart';
import 'light_theme_colors.dart';
import 'light_theme_text.dart';

class LightTheme extends AppTheme {
  @override
  AppColors get appColors => LightThemeColors();

  @override
  AppTextTheme get appTextTheme => LightThemeText();

  @override
  String get fontFamily => 'SF Pro Display';
}
