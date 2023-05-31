import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exchange_rates_event.dart';
part 'exchange_rates_state.dart';
part 'exchange_rates_bloc.freezed.dart';

class ExchangeRatesBloc extends Bloc<ExchangeRatesEvent, ExchangeRatesState> {
  ExchangeRatesBloc() : super(_Initial()) {
    on<ExchangeRatesEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
