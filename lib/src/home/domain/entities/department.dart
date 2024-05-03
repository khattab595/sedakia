
import '../../data/models/department_dto.dart';

class Department {
  int? id;
  String? name;
  int? academicLevelId;
  int? stageLevelId;
  String? icon;
  String? createdAt;
  String? updatedAt;

  Department(
      {this.id,
      this.name,
      this.academicLevelId,
      this.stageLevelId,
      this.icon,
      this.createdAt,
      this.updatedAt});

  factory Department.fromDto(DepartmentDto json) => Department(
      id: json.id,
      name: json.name,
      academicLevelId: json.academicLevelId,
      stageLevelId: json.stageLevelId,
      icon: json.icon,
      createdAt: json.createdAt,
      updatedAt: json.updatedAt,
  );
}



