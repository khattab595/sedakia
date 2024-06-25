
import '../../../../core/network/api_response.dart';
import '../../../../core/widgets/drop_down/drop_down.dart';
import '../../data/models/add_request_params.dart';
import '../../data/models/my_request_dto.dart';
import '../../data/models/my_request_params.dart';
import '../entities/leave_type.dart';

abstract class RequestLogRepo {
  Future<List<DropDownItem>> fetchLeaveTypes();
  Future<List<DropDownItem>> fetchLeaveSubTypes();
  Future<ApiResponse<List<MyRequestDto>>> fetchMyRequest(MyRequestParams params);
  Future<String> addRequest(AddRequestParams params);
}
