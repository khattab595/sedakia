import 'package:json_annotation/json_annotation.dart'; 

part 'add_method_params.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class AddMethodParams {
  @JsonKey(name: 'method')
  String? method;
  @JsonKey(name: 'fields')
  List<FieldValue>? fields;

  AddMethodParams({this.method, this.fields});

   factory AddMethodParams.fromJson(Map<String, dynamic> json) => _$AddMethodParamsFromJson(json);

   Map<String, dynamic> toJson() => _$AddMethodParamsToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class FieldValue {
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'value')
  String? value;

  FieldValue({this.name, this.value});

   factory FieldValue.fromJson(Map<String, dynamic> json) => _$FieldValueFromJson(json);

   Map<String, dynamic> toJson() => _$FieldValueToJson(this);
}

