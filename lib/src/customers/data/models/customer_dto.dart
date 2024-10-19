import 'package:json_annotation/json_annotation.dart'; 

part 'customer_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class CustomerDto {
  @JsonKey(name: 'id')
  String? id;
  @JsonKey(name: 'user_login')
  String? userLogin;
  @JsonKey(name: 'email')
  String? email;

  CustomerDto({this.id, this.userLogin, this.email});

   factory CustomerDto.fromJson(Map<String, dynamic> json) => _$CustomerDtoFromJson(json);

   Map<String, dynamic> toJson() => _$CustomerDtoToJson(this);
}

