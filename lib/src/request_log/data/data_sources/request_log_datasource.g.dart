// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_log_datasource.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _RequestLogDatasource implements RequestLogDatasource {
  _RequestLogDatasource(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://alwaseet-sa.online/api/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<ApiResponse<List<LeaveTypeDto>>> fetchLeaveTypes() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ApiResponse<List<LeaveTypeDto>>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'v1/leave-types',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ApiResponse<List<LeaveTypeDto>>.fromJson(
      _result.data!,
      (json) => json is List<dynamic>
          ? json
              .map<LeaveTypeDto>(
                  (i) => LeaveTypeDto.fromJson(i as Map<String, dynamic>))
              .toList()
          : List.empty(),
    );
    return value;
  }

  @override
  Future<ApiResponse<List<LeaveTypeDto>>> fetchLeaveSubTypes() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ApiResponse<List<LeaveTypeDto>>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'v1/leave-sub-types',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ApiResponse<List<LeaveTypeDto>>.fromJson(
      _result.data!,
      (json) => json is List<dynamic>
          ? json
              .map<LeaveTypeDto>(
                  (i) => LeaveTypeDto.fromJson(i as Map<String, dynamic>))
              .toList()
          : List.empty(),
    );
    return value;
  }

  @override
  Future<ApiResponse<List<MyRequestDto>>> fetchMyRequest(
      MyRequestParams params) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.addAll(params.toJson());
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ApiResponse<List<MyRequestDto>>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'v1/leaves',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ApiResponse<List<MyRequestDto>>.fromJson(
      _result.data!,
      (json) => json is List<dynamic>
          ? json
              .map<MyRequestDto>(
                  (i) => MyRequestDto.fromJson(i as Map<String, dynamic>))
              .toList()
          : List.empty(),
    );
    return value;
  }

  @override
  Future<ApiResponse<dynamic>> addRequest(
    String startDate,
    String endDate,
    String resignationDate,
    String advanceAmount,
    String leaveType,
    String vacationType,
    String description,
    List<File> files,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = FormData();
    _data.fields.add(MapEntry(
      'start_date',
      startDate,
    ));
    _data.fields.add(MapEntry(
      'end_date',
      endDate,
    ));
    _data.fields.add(MapEntry(
      'resignation_date',
      resignationDate,
    ));
    _data.fields.add(MapEntry(
      'advance_amount',
      advanceAmount,
    ));
    _data.fields.add(MapEntry(
      'leave_type',
      leaveType,
    ));
    _data.fields.add(MapEntry(
      'vacation_type',
      vacationType,
    ));
    _data.fields.add(MapEntry(
      'description',
      description,
    ));
    _data.files.addAll(files.map((i) => MapEntry(
        'files',
        MultipartFile.fromFileSync(
          i.path,
          filename: i.path.split(Platform.pathSeparator).last,
        ))));
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ApiResponse<dynamic>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
      contentType: 'multipart/form-data',
    )
            .compose(
              _dio.options,
              'v1/leaves',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ApiResponse<dynamic>.fromJson(
      _result.data!,
      (json) => json as dynamic,
    );
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
