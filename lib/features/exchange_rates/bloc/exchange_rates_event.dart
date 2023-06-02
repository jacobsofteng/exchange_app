part of 'exchange_rates_bloc.dart';

@freezed
class ExchangeRatesEvent with _$ExchangeRatesEvent {
  const factory ExchangeRatesEvent.fetchCurrencies({bool? more}) = _FetchCurrencies;
  const factory ExchangeRatesEvent.fetchCurrency(String code) = _FetchCurrency;
}
