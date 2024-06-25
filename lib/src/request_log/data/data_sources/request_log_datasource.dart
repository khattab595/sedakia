import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:app/core/network/api_response.dart';
import 'package:app/core/utils/constants.dart';
import '../models/leave_type_dto.dart';
import '../models/my_request_dto.dart';
import '../models/my_request_params.dart';

part 'request_log_datasource.g.dart';

@Injectable()
@RestApi(baseUrl: kBaseUrl)
abstract class RequestLogDatasource {
  @factoryMethod
  factory RequestLogDatasource(Dio dio) = _RequestLogDatasource;

  @GET('v1/leave-types')
  Future<ApiResponse<List<LeaveTypeDto>>> fetchLeaveTypes();

  @GET('v1/leave-sub-types')
  Future<ApiResponse<List<LeaveTypeDto>>> fetchLeaveSubTypes();

  @GET('v1/leaves')
  Future<ApiResponse<List<MyRequestDto>>> fetchMyRequest(@Queries() MyRequestParams params);

  @MultiPart()
  @POST('v1/leaves')
  Future<ApiResponse> addRequest(
    @Part(name: 'start_date') String startDate,
    @Part(name: 'end_date') String endDate,
    @Part(name: 'resignation_date') String resignationDate,
    @Part(name: 'advance_amount') String advanceAmount,
    @Part(name: 'leave_type') String leaveType,
    @Part(name: 'vacation_type') String vacationType,
    @Part(name: 'description') String description,
    @Part(name: 'files') List<File> files,
  );
}
