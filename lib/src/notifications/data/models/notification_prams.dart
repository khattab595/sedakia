import 'package:json_annotation/json_annotation.dart'; 

part 'notification_prams.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class NotificationPrams {
  @JsonKey(name: 'page')
  int? page;

  NotificationPrams({this.page});

   factory NotificationPrams.fromJson(Map<String, dynamic> json) => _$NotificationPramsFromJson(json);

   Map<String, dynamic> toJson() => _$NotificationPramsToJson(this);
}

