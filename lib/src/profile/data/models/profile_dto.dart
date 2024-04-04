import 'package:json_annotation/json_annotation.dart'; 

part 'profile_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: true)
class ProfileDto {
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'email')
  String? email;
  @JsonKey(name: 'phone')
  String? phone;
  @JsonKey(name: 'qayds')
  List<StoreDto>? stores;

  ProfileDto({this.name, this.email, this.phone, this.stores});

   factory ProfileDto.fromJson(Map<String, dynamic> json) => _$ProfileDtoFromJson(json);

   Map<String, dynamic> toJson() => _$ProfileDtoToJson(this);
}

@JsonSerializable(ignoreUnannotated: true)
class StoreDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'store_name')
  String? storeName;
  @JsonKey(name: 'store_link')
  String? storeLink;
  @JsonKey(name: 'is_default')
  int? isDefault;

  StoreDto({this.id, this.storeName, this.storeLink, this.isDefault});

   factory StoreDto.fromJson(Map<String, dynamic> json) => _$StoreDtoFromJson(json);

   Map<String, dynamic> toJson() => _$StoreDtoToJson(this);
}

