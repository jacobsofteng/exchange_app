part of 'exchange_rates_bloc.dart';

@freezed
class ExchangeRatesEvent with _$ExchangeRatesEvent {
  const factory ExchangeRatesEvent.started() = _Started;
}