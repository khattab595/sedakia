// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeDto _$HomeDtoFromJson(Map<String, dynamic> json) => HomeDto(
      statistics: (json['statistics'] as List<dynamic>?)
          ?.map((e) => Statistic.fromJson(e as Map<String, dynamic>))
          .toList(),
      slider:
          (json['slider'] as List<dynamic>?)?.map((e) => e as String).toList(),
      sections: (json['sections'] as List<dynamic>?)
          ?.map((e) => Section.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HomeDtoToJson(HomeDto instance) => <String, dynamic>{
      'statistics': instance.statistics,
      'slider': instance.slider,
      'sections': instance.sections,
    };

Statistic _$StatisticFromJson(Map<String, dynamic> json) => Statistic(
      title: json['title'] as String?,
      value: json['value'] as int?,
      color: json['color'] as String?,
    );

Map<String, dynamic> _$StatisticToJson(Statistic instance) => <String, dynamic>{
      'title': instance.title,
      'value': instance.value,
      'color': instance.color,
    };

Section _$SectionFromJson(Map<String, dynamic> json) => Section(
      title: json['title'] as String?,
      seeMore: json['see_more'] as bool?,
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => ProductDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SectionToJson(Section instance) => <String, dynamic>{
      'title': instance.title,
      'see_more': instance.seeMore,
      'products': instance.products,
    };
