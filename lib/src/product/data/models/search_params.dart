import 'package:json_annotation/json_annotation.dart';

part 'search_params.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class SearchParams {
  @JsonKey(name: 'search_text', includeIfNull: false)
  String? searchText;
  @JsonKey(name: 'status', includeIfNull: false)
  String? status;
  @JsonKey(name: 'date_from', includeIfNull: false)
  String? dateFrom;
  @JsonKey(name: 'date_to', includeIfNull: false)
  String? dateTo;

  SearchParams({this.searchText,this.status,this.dateFrom,this.dateTo});

  factory SearchParams.fromJson(Map<String, dynamic> json) =>
      _$SearchParamsFromJson(json);

  Map<String, dynamic> toJson() => _$SearchParamsToJson(this);
}
