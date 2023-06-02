import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

class Observer extends BlocObserver {
  static final Logger _logger = Logger();

  @override
  void onEvent(Bloc bloc, Object? event) {
    _logger.d(event);
    super.onEvent(bloc, event);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    _logger.d(change);
    super.onChange(bloc, change);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    _logger.e(error);
    super.onError(bloc, error, stackTrace);
  }
}
