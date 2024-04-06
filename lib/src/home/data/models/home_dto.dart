import 'package:json_annotation/json_annotation.dart';

import '../../../invoices/data/models/product_dto.dart';

part 'home_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class HomeDto {
  @JsonKey(name: 'statistics')
  List<Statistic>? statistics;
  @JsonKey(name: 'slider')
  List<String>? slider;
  @JsonKey(name: 'sections')
  List<Section>? sections;

  HomeDto({this.statistics, this.slider, this.sections});

   factory HomeDto.fromJson(Map<String, dynamic> json) => _$HomeDtoFromJson(json);

   Map<String, dynamic> toJson() => _$HomeDtoToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class Statistic {
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'value')
  int? value;
  @JsonKey(name: 'color')
  String? color;

  Statistic({this.title, this.value, this.color});

   factory Statistic.fromJson(Map<String, dynamic> json) => _$StatisticFromJson(json);

   Map<String, dynamic> toJson() => _$StatisticToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class Section {
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'see_more')
  bool? seeMore;
  @JsonKey(name: 'invoices')
  List<InvoiceDto>? products;

  Section({this.title, this.seeMore, this.products});

   factory Section.fromJson(Map<String, dynamic> json) => _$SectionFromJson(json);

   Map<String, dynamic> toJson() => _$SectionToJson(this);
}


