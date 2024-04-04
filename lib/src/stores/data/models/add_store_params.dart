import 'package:json_annotation/json_annotation.dart'; 

part 'add_store_params.g.dart';

@JsonSerializable(ignoreUnannotated: true)
class AddStoreParams {
  @JsonKey(name: 'store_name')
  String? storeName;
  @JsonKey(name: 'store_link')
  String? storeLink;

  AddStoreParams({this.storeName, this.storeLink});

   factory AddStoreParams.fromJson(Map<String, dynamic> json) => _$AddStoreParamsFromJson(json);

   Map<String, dynamic> toJson() => _$AddStoreParamsToJson(this);
}

