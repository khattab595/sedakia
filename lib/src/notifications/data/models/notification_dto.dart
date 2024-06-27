import 'package:json_annotation/json_annotation.dart';

part 'notification_dto.g.dart';
@JsonSerializable(ignoreUnannotated: false)
class NotificationDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'title')
  String? title;
 @JsonKey(name: 'created_at')
  String? time;
 @JsonKey(name: 'message')
  String? message;
 @JsonKey(name: 'ago')
  String? ago;

  NotificationDto({this.id, this.title, this.time, this.message,this.ago});

  factory NotificationDto.fromJson(Map<String, dynamic> json) => _$NotificationDtoFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationDtoToJson(this);
}





