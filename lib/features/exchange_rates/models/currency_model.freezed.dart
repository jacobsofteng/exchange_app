// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrencyModel _$CurrencyModelFromJson(Map<String, dynamic> json) {
  return _CurrencyModel.fromJson(json);
}

/// @nodoc
mixin _$CurrencyModel {
  @JsonKey(name: 'code')
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'rates')
  List<double> get rates => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  Color? get randomColor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrencyModelCopyWith<CurrencyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyModelCopyWith<$Res> {
  factory $CurrencyModelCopyWith(
          CurrencyModel value, $Res Function(CurrencyModel) then) =
      _$CurrencyModelCopyWithImpl<$Res, CurrencyModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'code') String code,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'rates') List<double> rates,
      @JsonKey(ignore: true) Color? randomColor});
}

/// @nodoc
class _$CurrencyModelCopyWithImpl<$Res, $Val extends CurrencyModel>
    implements $CurrencyModelCopyWith<$Res> {
  _$CurrencyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? description = null,
    Object? rates = null,
    Object? randomColor = freezed,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      rates: null == rates
          ? _value.rates
          : rates // ignore: cast_nullable_to_non_nullable
              as List<double>,
      randomColor: freezed == randomColor
          ? _value.randomColor
          : randomColor // ignore: cast_nullable_to_non_nullable
              as Color?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CurrencyModelCopyWith<$Res>
    implements $CurrencyModelCopyWith<$Res> {
  factory _$$_CurrencyModelCopyWith(
          _$_CurrencyModel value, $Res Function(_$_CurrencyModel) then) =
      __$$_CurrencyModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'code') String code,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'rates') List<double> rates,
      @JsonKey(ignore: true) Color? randomColor});
}

/// @nodoc
class __$$_CurrencyModelCopyWithImpl<$Res>
    extends _$CurrencyModelCopyWithImpl<$Res, _$_CurrencyModel>
    implements _$$_CurrencyModelCopyWith<$Res> {
  __$$_CurrencyModelCopyWithImpl(
      _$_CurrencyModel _value, $Res Function(_$_CurrencyModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? description = null,
    Object? rates = null,
    Object? randomColor = freezed,
  }) {
    return _then(_$_CurrencyModel(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      rates: null == rates
          ? _value._rates
          : rates // ignore: cast_nullable_to_non_nullable
              as List<double>,
      randomColor: freezed == randomColor
          ? _value.randomColor
          : randomColor // ignore: cast_nullable_to_non_nullable
              as Color?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CurrencyModel extends _CurrencyModel {
  const _$_CurrencyModel(
      {@JsonKey(name: 'code') required this.code,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'rates') required final List<double> rates,
      @JsonKey(ignore: true) this.randomColor})
      : _rates = rates,
        super._();

  factory _$_CurrencyModel.fromJson(Map<String, dynamic> json) =>
      _$$_CurrencyModelFromJson(json);

  @override
  @JsonKey(name: 'code')
  final String code;
  @override
  @JsonKey(name: 'description')
  final String description;
  final List<double> _rates;
  @override
  @JsonKey(name: 'rates')
  List<double> get rates {
    if (_rates is EqualUnmodifiableListView) return _rates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rates);
  }

  @override
  @JsonKey(ignore: true)
  final Color? randomColor;

  @override
  String toString() {
    return 'CurrencyModel(code: $code, description: $description, rates: $rates, randomColor: $randomColor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrencyModel &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._rates, _rates) &&
            (identical(other.randomColor, randomColor) ||
                other.randomColor == randomColor));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, description,
      const DeepCollectionEquality().hash(_rates), randomColor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrencyModelCopyWith<_$_CurrencyModel> get copyWith =>
      __$$_CurrencyModelCopyWithImpl<_$_CurrencyModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrencyModelToJson(
      this,
    );
  }
}

abstract class _CurrencyModel extends CurrencyModel {
  const factory _CurrencyModel(
      {@JsonKey(name: 'code') required final String code,
      @JsonKey(name: 'description') required final String description,
      @JsonKey(name: 'rates') required final List<double> rates,
      @JsonKey(ignore: true) final Color? randomColor}) = _$_CurrencyModel;
  const _CurrencyModel._() : super._();

  factory _CurrencyModel.fromJson(Map<String, dynamic> json) =
      _$_CurrencyModel.fromJson;

  @override
  @JsonKey(name: 'code')
  String get code;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(name: 'rates')
  List<double> get rates;
  @override
  @JsonKey(ignore: true)
  Color? get randomColor;
  @override
  @JsonKey(ignore: true)
  _$$_CurrencyModelCopyWith<_$_CurrencyModel> get copyWith =>
      throw _privateConstructorUsedError;
}
