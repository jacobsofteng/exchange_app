import 'package:exchange_app/common/utils/randomizer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/models/state_status.dart';
import '../models/currency_model.dart';
import '../repositories/i_currencies_repository.dart';

part 'exchange_rates_bloc.freezed.dart';
part 'exchange_rates_event.dart';
part 'exchange_rates_state.dart';

class ExchangeRatesBloc extends Bloc<ExchangeRatesEvent, ExchangeRatesState> {
  final ICurrenciesRepository _currenciesRepository;
  int _limit = 10;
  final int _totalDocuments = 10;
  int _fetchedDocuments = 0;

  ExchangeRatesBloc({required ICurrenciesRepository currenciesRepository})
      : _currenciesRepository = currenciesRepository,
        super(const ExchangeRatesState()) {
    on<ExchangeRatesEvent>((event, emit) => event.map(
          fetchCurrencies: (event) => _fetchCurrencies(event, emit),
          fetchCurrency: (event) => _fetchCurrency(event, emit),
        ));
  }

  void _fetchCurrencies(_FetchCurrencies event, Emitter<ExchangeRatesState> emit) async {
    emit(state.copyWith(status: const StateStatus.loading()));

    if (event.more == true) {
      if (_fetchedDocuments >= _totalDocuments) {
        emit(state.copyWith(status: const StateStatus.success()));
        return;
      }
      if (_fetchedDocuments + _limit > _totalDocuments) {
        _limit = _totalDocuments - _fetchedDocuments;
      }
    }

    try {
      final result = await _currenciesRepository.fetchCurrencies(limit: _limit);
      emit(
        state.copyWith(
          status: const StateStatus.success(),
          currencies: event.more != null
              ? (List.of(state.currencies)..addAll(result)).setRandomColor()
              : result.setRandomColor(),
        ),
      );
      _fetchedDocuments += _limit;
    } catch (e) {
      rethrow;
    } finally {
      emit(state.copyWith(status: const StateStatus.error('Error fetching currencies')));
    }
  }

  void _fetchCurrency(_FetchCurrency event, Emitter<ExchangeRatesState> emit) async {
    emit(state.copyWith(status: const StateStatus.loading()));

    try {
      final result = await _currenciesRepository.fetchCurrency(event.code);
      emit(state.copyWith(
        status: const StateStatus.success(),
        selectedCurrency: result,
      ));
    } catch (e) {
      rethrow;
    } finally {
      emit(state.copyWith(status: const StateStatus.error('Error fetching currency')));
    }
  }
}
