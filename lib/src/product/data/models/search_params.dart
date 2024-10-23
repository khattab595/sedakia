import 'package:json_annotation/json_annotation.dart';

part 'search_params.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class SearchParams {
  @JsonKey(name: 'search_text', includeIfNull: false)
  String? searchText;

  SearchParams({this.searchText});

  factory SearchParams.fromJson(Map<String, dynamic> json) =>
      _$SearchParamsFromJson(json);

  Map<String, dynamic> toJson() => _$SearchParamsToJson(this);
}
