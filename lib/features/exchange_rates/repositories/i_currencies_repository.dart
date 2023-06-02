import '../models/currency_model.dart';

abstract class ICurrenciesRepository {
  Future<List<CurrencyModel>> fetchCurrencies({required int limit});
  Future<CurrencyModel> fetchCurrency(String code);
}
