import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

class Observer extends BlocObserver {
  static final Logger _logger = Logger();

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    _logger.d(event);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    _logger.e(error);
    super.onError(bloc, error, stackTrace);
  }
}
