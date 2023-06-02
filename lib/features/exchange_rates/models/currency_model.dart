import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_model.freezed.dart';
part 'currency_model.g.dart';

@freezed
class CurrencyModel with _$CurrencyModel {
  const CurrencyModel._();
  const factory CurrencyModel({
    @JsonKey(name: 'code') required String code,
    @JsonKey(name: 'description') required String description,
    @JsonKey(name: 'rates') required List<double> rates,
    @JsonKey(ignore: true) Color? randomColor,
  }) = _CurrencyModel;

  factory CurrencyModel.fromJson(Map<String, dynamic> json) => _$CurrencyModelFromJson(json);
}
