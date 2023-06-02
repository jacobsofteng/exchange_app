part of 'exchange_rates_bloc.dart';

@freezed
class ExchangeRatesState with _$ExchangeRatesState {
  const factory ExchangeRatesState({
    @Default(StateStatus()) StateStatus status,
    @Default([]) List<CurrencyModel> currencies,
    CurrencyModel? selectedCurrency,
  }) = _ExchangeRatesState;
}
