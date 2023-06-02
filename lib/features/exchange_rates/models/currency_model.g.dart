// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CurrencyModel _$$_CurrencyModelFromJson(Map<String, dynamic> json) =>
    _$_CurrencyModel(
      code: json['code'] as String,
      description: json['description'] as String,
      rates: (json['rates'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$$_CurrencyModelToJson(_$_CurrencyModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'description': instance.description,
      'rates': instance.rates,
    };
