import 'package:injectable/injectable.dart';
import '../../../../core/network/api_response.dart';
import '../../../../core/widgets/drop_down/drop_down.dart';
import '../../domain/entities/leave_type.dart';
import '../../domain/repositories/request_log_repo.dart';
import '../data_sources/request_log_datasource.dart';
import '../models/add_request_params.dart';
import '../models/my_request_dto.dart';
import '../models/my_request_params.dart';

@Injectable(as: RequestLogRepo)
class RequestLogImp extends RequestLogRepo {
  final RequestLogDatasource datasource;

  RequestLogImp(this.datasource);

  @override
  Future<List<DropDownItem>> fetchLeaveTypes() async {
    final response = await datasource.fetchLeaveTypes();
    return LeaveType.toDropDownList(response.data ?? []);
  }

  @override
  Future<List<DropDownItem>> fetchLeaveSubTypes() async {
    final response = await datasource.fetchLeaveSubTypes();
    return LeaveType.toDropDownList(response.data ?? []);
  }

  @override
  Future<ApiResponse<List<MyRequestDto>>> fetchMyRequest(MyRequestParams params) async {
    final response = await datasource.fetchMyRequest(params);
    return response;
  }

  @override
  Future<String> addRequest(AddRequestParams params) async {
    final response = await datasource.addRequest(
      params.startDate ?? '',
      params.endDate ?? '',
      params.resignationDate ?? '',
      params.advanceAmount ?? '',
      params.leaveType ?? '',
      params.vacationType ?? '',
      params.description ?? '',
      params.files ?? [],
    );
    return response.message ?? '';
  }
}
