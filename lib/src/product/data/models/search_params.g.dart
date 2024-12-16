// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchParams _$SearchParamsFromJson(Map<String, dynamic> json) => SearchParams(
      searchText: json['search_text'] as String?,
      status: json['status'] as String?,
      dateFrom: json['date_from'] as String?,
      dateTo: json['date_to'] as String?,
    );

Map<String, dynamic> _$SearchParamsToJson(SearchParams instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('search_text', instance.searchText);
  writeNotNull('status', instance.status);
  writeNotNull('date_from', instance.dateFrom);
  writeNotNull('date_to', instance.dateTo);
  return val;
}
