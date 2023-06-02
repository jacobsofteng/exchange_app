import 'dart:math';

import 'package:exchange_app/features/exchange_rates/models/currency_model.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

Color getRandomColor() {
  final random = Random();
  // Select either red or green randomly
  return random.nextBool() ? Colors.red : Colors.green;
}

extension SetRandomColor on List<CurrencyModel> {
  List<CurrencyModel> setRandomColor() {
    return map((currency) {
      return currency.copyWith(randomColor: getRandomColor());
    }).toList();
  }
}

List<FlSpot> getFlSpots(List<double> rates) {
  return rates.asMap().entries.map((entry) => FlSpot(entry.key.toDouble(), entry.value)).toList();
}
