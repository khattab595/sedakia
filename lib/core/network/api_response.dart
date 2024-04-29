import 'package:app/core/network/pagination.dart';
import 'package:json_annotation/json_annotation.dart';


part 'api_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class ApiResponse<T> {
  // String? status;
  int? code;
  String? message;
  String? name;
  String? token;
  T? data;


  ApiResponse({this.code, this.message, this.data, this.name, this.token});

  factory ApiResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) toJsonT,
  ) => _$ApiResponseFromJson(json, toJsonT);
}



