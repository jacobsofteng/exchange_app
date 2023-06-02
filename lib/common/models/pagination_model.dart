import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_model.freezed.dart';
part 'pagination_model.g.dart';

@freezed
class PaginationModel with _$PaginationModel {
  const PaginationModel._();
  const factory PaginationModel({
    @JsonKey(name: 'limit') required int limit,
  }) = _PaginationModel;

  factory PaginationModel.fromJson(Map<String, Object?> json) => _$PaginationModelFromJson(json);
}
