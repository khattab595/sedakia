// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeDataDto _$HomeDataDtoFromJson(Map<String, dynamic> json) => HomeDataDto(
      sliders: (json['sliders'] as List<dynamic>?)
          ?.map((e) => SliderDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      currentProject: json['current_project'] == null
          ? null
          : CurrentProjectDto.fromJson(
              json['current_project'] as Map<String, dynamic>),
      models: (json['models'] as List<dynamic>?)
          ?.map((e) => ModelDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      employeeStatus: json['employee_status'] as String?,
    );

Map<String, dynamic> _$HomeDataDtoToJson(HomeDataDto instance) =>
    <String, dynamic>{
      'sliders': instance.sliders,
      'current_project': instance.currentProject,
      'models': instance.models,
      'employee_status': instance.employeeStatus,
    };

SliderDto _$SliderDtoFromJson(Map<String, dynamic> json) => SliderDto(
      id: json['id'] as int?,
      name: json['name'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$SliderDtoToJson(SliderDto instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
    };

CurrentProjectDto _$CurrentProjectDtoFromJson(Map<String, dynamic> json) =>
    CurrentProjectDto(
      id: json['id'] as int?,
      code: json['code'] as String?,
      name: json['name'] as String?,
      clientName: json['client_name'] as String?,
      mapLink: json['map_link'] as String?,
      description: json['description'] as String?,
      city: json['city'] == null
          ? null
          : CityDto.fromJson(json['city'] as Map<String, dynamic>),
      location: json['location'] == null
          ? null
          : LocationDto.fromJson(json['location'] as Map<String, dynamic>),
      startDate: json['start_date'] as String?,
      endDate: json['end_date'] as String?,
    );

Map<String, dynamic> _$CurrentProjectDtoToJson(CurrentProjectDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
      'client_name': instance.clientName,
      'map_link': instance.mapLink,
      'description': instance.description,
      'city': instance.city,
      'location': instance.location,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
    };

CityDto _$CityDtoFromJson(Map<String, dynamic> json) => CityDto(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$CityDtoToJson(CityDto instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

LocationDto _$LocationDtoFromJson(Map<String, dynamic> json) => LocationDto(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$LocationDtoToJson(LocationDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

ModelDto _$ModelDtoFromJson(Map<String, dynamic> json) => ModelDto(
      name: json['name'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$ModelDtoToJson(ModelDto instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
