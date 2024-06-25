
import '../../data/models/my_request_dto.dart';

class MyRequest {
  int? id;
  String? code;
  String? startDate;
  String? endDate;
  String? responseDate;
  String? status;
  String? leaveType;
  String? vacationType;
  String? description;

  MyRequest({this.id, this.code, this.startDate, this.endDate, this.responseDate, this.status, this.leaveType, this.vacationType, this.description});

   factory MyRequest.fromDto(MyRequestDto json) {
     return MyRequest(
       id: json.id,
       code: json.code,
       startDate: json.startDate,
       endDate: json.endDate,
       responseDate: json.responseDate,
       status: json.status,
       leaveType: json.leaveType,
       vacationType: json.vacationType,
       description: json.description,
     );
   }
}

