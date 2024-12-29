class TasksDto {
  TasksDto({
      this.value, 
      this.complet,});

  TasksDto.fromJson(dynamic json) {
    value = json['value'];
    complet = json['complet'];
  }
  String? value;
  String? complet;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['value'] = value;
    map['complet'] = complet;
    return map;
  }

}