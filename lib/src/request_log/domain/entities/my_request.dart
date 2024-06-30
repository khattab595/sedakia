
import '../../../home/data/models/home_data_dto.dart';
import '../../data/models/my_request_dto.dart';

class MyRequest {
  static const int waiting = 1;
  static const int approved = 2;
  static const int rejected = 3;

  /////////////////////////////////////////////////////////////////
  int? id;
  String? code;
  String? startDate;
  String? endDate;
  String? responseDate;
  String? resignationDate;
  String? createdAt;
  String? advanceAmount;
  String? status;
  String? leaveType;
  String? vacationType;
  String? description;
  String? reasonRejectionLeaveRequest;
  List<ModelDto>? files;

  MyRequest({
    this.id,
    this.code,
    this.startDate,
    this.endDate,
    this.responseDate,
    this.resignationDate,
    this.createdAt,
    this.advanceAmount,
    this.status,
    this.leaveType,
    this.vacationType,
    this.description,
    this.reasonRejectionLeaveRequest,
    this.files,
  });

   factory MyRequest.fromDto(MyRequestDto json) {
     return MyRequest(
        id: json.id,
        code: json.code,
        startDate: json.startDate,
        endDate: json.endDate,
        responseDate: json.responseDate,
        resignationDate: json.resignationDate,
        createdAt: json.createdAt,
        advanceAmount: json.advanceAmount,
        status: json.status,
        leaveType: json.leaveType,
        vacationType: json.vacationType,
        description: json.description,
        reasonRejectionLeaveRequest: json.reasonRejectionLeaveRequest,
        files: json.files,
     );
   }
}

