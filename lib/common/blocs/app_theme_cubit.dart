import 'package:flutter_bloc/flutter_bloc.dart';

import '../../config/theme/app_theme.dart';
import '../../config/theme/light_theme/light_theme.dart';

class AppThemeCubit extends Cubit<AppTheme> {
  AppThemeCubit() : super(LightTheme());

  void changeTheme(AppTheme theme) => emit(theme);
}
