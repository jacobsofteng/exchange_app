// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exchange_rates_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExchangeRatesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? more) fetchCurrencies,
    required TResult Function(String code) fetchCurrency,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool? more)? fetchCurrencies,
    TResult? Function(String code)? fetchCurrency,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? more)? fetchCurrencies,
    TResult Function(String code)? fetchCurrency,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchCurrencies value) fetchCurrencies,
    required TResult Function(_FetchCurrency value) fetchCurrency,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchCurrencies value)? fetchCurrencies,
    TResult? Function(_FetchCurrency value)? fetchCurrency,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchCurrencies value)? fetchCurrencies,
    TResult Function(_FetchCurrency value)? fetchCurrency,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExchangeRatesEventCopyWith<$Res> {
  factory $ExchangeRatesEventCopyWith(
          ExchangeRatesEvent value, $Res Function(ExchangeRatesEvent) then) =
      _$ExchangeRatesEventCopyWithImpl<$Res, ExchangeRatesEvent>;
}

/// @nodoc
class _$ExchangeRatesEventCopyWithImpl<$Res, $Val extends ExchangeRatesEvent>
    implements $ExchangeRatesEventCopyWith<$Res> {
  _$ExchangeRatesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchCurrenciesCopyWith<$Res> {
  factory _$$_FetchCurrenciesCopyWith(
          _$_FetchCurrencies value, $Res Function(_$_FetchCurrencies) then) =
      __$$_FetchCurrenciesCopyWithImpl<$Res>;
  @useResult
  $Res call({bool? more});
}

/// @nodoc
class __$$_FetchCurrenciesCopyWithImpl<$Res>
    extends _$ExchangeRatesEventCopyWithImpl<$Res, _$_FetchCurrencies>
    implements _$$_FetchCurrenciesCopyWith<$Res> {
  __$$_FetchCurrenciesCopyWithImpl(
      _$_FetchCurrencies _value, $Res Function(_$_FetchCurrencies) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? more = freezed,
  }) {
    return _then(_$_FetchCurrencies(
      more: freezed == more
          ? _value.more
          : more // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_FetchCurrencies implements _FetchCurrencies {
  const _$_FetchCurrencies({this.more});

  @override
  final bool? more;

  @override
  String toString() {
    return 'ExchangeRatesEvent.fetchCurrencies(more: $more)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchCurrencies &&
            (identical(other.more, more) || other.more == more));
  }

  @override
  int get hashCode => Object.hash(runtimeType, more);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchCurrenciesCopyWith<_$_FetchCurrencies> get copyWith =>
      __$$_FetchCurrenciesCopyWithImpl<_$_FetchCurrencies>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? more) fetchCurrencies,
    required TResult Function(String code) fetchCurrency,
  }) {
    return fetchCurrencies(more);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool? more)? fetchCurrencies,
    TResult? Function(String code)? fetchCurrency,
  }) {
    return fetchCurrencies?.call(more);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? more)? fetchCurrencies,
    TResult Function(String code)? fetchCurrency,
    required TResult orElse(),
  }) {
    if (fetchCurrencies != null) {
      return fetchCurrencies(more);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchCurrencies value) fetchCurrencies,
    required TResult Function(_FetchCurrency value) fetchCurrency,
  }) {
    return fetchCurrencies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchCurrencies value)? fetchCurrencies,
    TResult? Function(_FetchCurrency value)? fetchCurrency,
  }) {
    return fetchCurrencies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchCurrencies value)? fetchCurrencies,
    TResult Function(_FetchCurrency value)? fetchCurrency,
    required TResult orElse(),
  }) {
    if (fetchCurrencies != null) {
      return fetchCurrencies(this);
    }
    return orElse();
  }
}

abstract class _FetchCurrencies implements ExchangeRatesEvent {
  const factory _FetchCurrencies({final bool? more}) = _$_FetchCurrencies;

  bool? get more;
  @JsonKey(ignore: true)
  _$$_FetchCurrenciesCopyWith<_$_FetchCurrencies> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchCurrencyCopyWith<$Res> {
  factory _$$_FetchCurrencyCopyWith(
          _$_FetchCurrency value, $Res Function(_$_FetchCurrency) then) =
      __$$_FetchCurrencyCopyWithImpl<$Res>;
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$_FetchCurrencyCopyWithImpl<$Res>
    extends _$ExchangeRatesEventCopyWithImpl<$Res, _$_FetchCurrency>
    implements _$$_FetchCurrencyCopyWith<$Res> {
  __$$_FetchCurrencyCopyWithImpl(
      _$_FetchCurrency _value, $Res Function(_$_FetchCurrency) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$_FetchCurrency(
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FetchCurrency implements _FetchCurrency {
  const _$_FetchCurrency(this.code);

  @override
  final String code;

  @override
  String toString() {
    return 'ExchangeRatesEvent.fetchCurrency(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchCurrency &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchCurrencyCopyWith<_$_FetchCurrency> get copyWith =>
      __$$_FetchCurrencyCopyWithImpl<_$_FetchCurrency>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? more) fetchCurrencies,
    required TResult Function(String code) fetchCurrency,
  }) {
    return fetchCurrency(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool? more)? fetchCurrencies,
    TResult? Function(String code)? fetchCurrency,
  }) {
    return fetchCurrency?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? more)? fetchCurrencies,
    TResult Function(String code)? fetchCurrency,
    required TResult orElse(),
  }) {
    if (fetchCurrency != null) {
      return fetchCurrency(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchCurrencies value) fetchCurrencies,
    required TResult Function(_FetchCurrency value) fetchCurrency,
  }) {
    return fetchCurrency(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchCurrencies value)? fetchCurrencies,
    TResult? Function(_FetchCurrency value)? fetchCurrency,
  }) {
    return fetchCurrency?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchCurrencies value)? fetchCurrencies,
    TResult Function(_FetchCurrency value)? fetchCurrency,
    required TResult orElse(),
  }) {
    if (fetchCurrency != null) {
      return fetchCurrency(this);
    }
    return orElse();
  }
}

abstract class _FetchCurrency implements ExchangeRatesEvent {
  const factory _FetchCurrency(final String code) = _$_FetchCurrency;

  String get code;
  @JsonKey(ignore: true)
  _$$_FetchCurrencyCopyWith<_$_FetchCurrency> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ExchangeRatesState {
  StateStatus get status => throw _privateConstructorUsedError;
  List<CurrencyModel> get currencies => throw _privateConstructorUsedError;
  CurrencyModel? get selectedCurrency => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExchangeRatesStateCopyWith<ExchangeRatesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExchangeRatesStateCopyWith<$Res> {
  factory $ExchangeRatesStateCopyWith(
          ExchangeRatesState value, $Res Function(ExchangeRatesState) then) =
      _$ExchangeRatesStateCopyWithImpl<$Res, ExchangeRatesState>;
  @useResult
  $Res call(
      {StateStatus status,
      List<CurrencyModel> currencies,
      CurrencyModel? selectedCurrency});

  $StateStatusCopyWith<$Res> get status;
  $CurrencyModelCopyWith<$Res>? get selectedCurrency;
}

/// @nodoc
class _$ExchangeRatesStateCopyWithImpl<$Res, $Val extends ExchangeRatesState>
    implements $ExchangeRatesStateCopyWith<$Res> {
  _$ExchangeRatesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? currencies = null,
    Object? selectedCurrency = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      currencies: null == currencies
          ? _value.currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as List<CurrencyModel>,
      selectedCurrency: freezed == selectedCurrency
          ? _value.selectedCurrency
          : selectedCurrency // ignore: cast_nullable_to_non_nullable
              as CurrencyModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StateStatusCopyWith<$Res> get status {
    return $StateStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrencyModelCopyWith<$Res>? get selectedCurrency {
    if (_value.selectedCurrency == null) {
      return null;
    }

    return $CurrencyModelCopyWith<$Res>(_value.selectedCurrency!, (value) {
      return _then(_value.copyWith(selectedCurrency: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ExchangeRatesStateCopyWith<$Res>
    implements $ExchangeRatesStateCopyWith<$Res> {
  factory _$$_ExchangeRatesStateCopyWith(_$_ExchangeRatesState value,
          $Res Function(_$_ExchangeRatesState) then) =
      __$$_ExchangeRatesStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StateStatus status,
      List<CurrencyModel> currencies,
      CurrencyModel? selectedCurrency});

  @override
  $StateStatusCopyWith<$Res> get status;
  @override
  $CurrencyModelCopyWith<$Res>? get selectedCurrency;
}

/// @nodoc
class __$$_ExchangeRatesStateCopyWithImpl<$Res>
    extends _$ExchangeRatesStateCopyWithImpl<$Res, _$_ExchangeRatesState>
    implements _$$_ExchangeRatesStateCopyWith<$Res> {
  __$$_ExchangeRatesStateCopyWithImpl(
      _$_ExchangeRatesState _value, $Res Function(_$_ExchangeRatesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? currencies = null,
    Object? selectedCurrency = freezed,
  }) {
    return _then(_$_ExchangeRatesState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      currencies: null == currencies
          ? _value._currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as List<CurrencyModel>,
      selectedCurrency: freezed == selectedCurrency
          ? _value.selectedCurrency
          : selectedCurrency // ignore: cast_nullable_to_non_nullable
              as CurrencyModel?,
    ));
  }
}

/// @nodoc

class _$_ExchangeRatesState implements _ExchangeRatesState {
  const _$_ExchangeRatesState(
      {this.status = const StateStatus(),
      final List<CurrencyModel> currencies = const [],
      this.selectedCurrency})
      : _currencies = currencies;

  @override
  @JsonKey()
  final StateStatus status;
  final List<CurrencyModel> _currencies;
  @override
  @JsonKey()
  List<CurrencyModel> get currencies {
    if (_currencies is EqualUnmodifiableListView) return _currencies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currencies);
  }

  @override
  final CurrencyModel? selectedCurrency;

  @override
  String toString() {
    return 'ExchangeRatesState(status: $status, currencies: $currencies, selectedCurrency: $selectedCurrency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExchangeRatesState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._currencies, _currencies) &&
            (identical(other.selectedCurrency, selectedCurrency) ||
                other.selectedCurrency == selectedCurrency));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_currencies), selectedCurrency);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExchangeRatesStateCopyWith<_$_ExchangeRatesState> get copyWith =>
      __$$_ExchangeRatesStateCopyWithImpl<_$_ExchangeRatesState>(
          this, _$identity);
}

abstract class _ExchangeRatesState implements ExchangeRatesState {
  const factory _ExchangeRatesState(
      {final StateStatus status,
      final List<CurrencyModel> currencies,
      final CurrencyModel? selectedCurrency}) = _$_ExchangeRatesState;

  @override
  StateStatus get status;
  @override
  List<CurrencyModel> get currencies;
  @override
  CurrencyModel? get selectedCurrency;
  @override
  @JsonKey(ignore: true)
  _$$_ExchangeRatesStateCopyWith<_$_ExchangeRatesState> get copyWith =>
      throw _privateConstructorUsedError;
}
