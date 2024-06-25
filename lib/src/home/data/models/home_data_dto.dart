import 'package:json_annotation/json_annotation.dart'; 

part 'home_data_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class HomeDataDto {
  @JsonKey(name: 'sliders')
  List<SliderDto>? sliders;
  @JsonKey(name: 'current_project')
  CurrentProjectDto? currentProject;
  @JsonKey(name: 'models')
  List<ModelDto>? models;

  HomeDataDto({this.sliders, this.currentProject, this.models});

   factory HomeDataDto.fromJson(Map<String, dynamic> json) => _$HomeDataDtoFromJson(json);

   Map<String, dynamic> toJson() => _$HomeDataDtoToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class SliderDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'image')
  String? image;

  SliderDto({this.id, this.name, this.image});

   factory SliderDto.fromJson(Map<String, dynamic> json) => _$SliderDtoFromJson(json);

   Map<String, dynamic> toJson() => _$SliderDtoToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class CurrentProjectDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'code')
  String? code;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'client_name')
  String? clientName;
  @JsonKey(name: 'map_link')
  String? mapLink;
  @JsonKey(name: 'description')
  String? description;
  @JsonKey(name: 'city')
  CityDto? city;
  @JsonKey(name: 'location')
  LocationDto? location;

  CurrentProjectDto({this.id, this.code, this.name, this.clientName, this.mapLink, this.description, this.city, this.location});

   factory CurrentProjectDto.fromJson(Map<String, dynamic> json) => _$CurrentProjectDtoFromJson(json);

   Map<String, dynamic> toJson() => _$CurrentProjectDtoToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class CityDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;

  CityDto({this.id, this.name});

   factory CityDto.fromJson(Map<String, dynamic> json) => _$CityDtoFromJson(json);

   Map<String, dynamic> toJson() => _$CityDtoToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class LocationDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;

  LocationDto({this.id, this.name});

   factory LocationDto.fromJson(Map<String, dynamic> json) => _$LocationDtoFromJson(json);

   Map<String, dynamic> toJson() => _$LocationDtoToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class ModelDto {
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'url')
  String? url;

  ModelDto({this.name, this.url});

   factory ModelDto.fromJson(Map<String, dynamic> json) => _$ModelDtoFromJson(json);

   Map<String, dynamic> toJson() => _$ModelDtoToJson(this);
}

