import '../../../../core/widgets/drop_down/drop_down.dart';
import '../../data/models/leave_type_dto.dart';

class LeaveType {
  static const String vacation = '1';
  static const String advance = '2';
  static const String resignation = '3';

  int? id;
  String? name;

  LeaveType({this.id, this.name});

  factory LeaveType.fromDto(LeaveTypeDto dto) {
    return LeaveType(
      id: dto.id,
      name: dto.name,
    );
  }

  static List<LeaveType> fromListDto(List<LeaveTypeDto> dto) {
    return dto.map((e) => LeaveType.fromDto(e)).toList();
  }

  static List<DropDownItem> toDropDownList(List<LeaveTypeDto> data) {
    return data.map((e) => DropDownItem(id: e.id.toString(), title: e.name)).toList();
  }


}
