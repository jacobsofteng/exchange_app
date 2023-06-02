import 'package:json_annotation/json_annotation.dart';

import 'pagination_model.dart';

part 'paginated_list.g.dart';

@JsonSerializable(genericArgumentFactories: true, fieldRename: FieldRename.snake)
class PaginatedList<T> {
  final PaginationModel pagination;
  final List<T> data;

  PaginatedList({
    required this.pagination,
    required this.data,
  });
  factory PaginatedList.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$PaginatedListFromJson(json, fromJsonT);
  Map<String, dynamic> toJson(Object Function(T value) toJsonT) => _$PaginatedListToJson(this, toJsonT);
}
