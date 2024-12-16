import 'package:json_annotation/json_annotation.dart';

part 'customer_dto.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class CustomerDto {
  @JsonKey(name: 'data')
  List<Data>? data;
  @JsonKey(name: 'total_users')
  int? totalUsers;
  @JsonKey(name: 'total_pages')
  int? totalPages;
  @JsonKey(name: 'current_page')
  int? currentPage;

  CustomerDto({this.data, this.totalUsers, this.totalPages, this.currentPage});

  factory CustomerDto.fromJson(Map<String, dynamic> json) =>
      _$CustomerDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerDtoToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class Data {
  @JsonKey(name: 'id')
  String? id;
  @JsonKey(name: 'user_login')
  String? userLogin;
  @JsonKey(name: 'email')
  String? email;
  @JsonKey(name: 'phone')
  String? phone;

  Data({this.id, this.userLogin, this.email, this.phone});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
