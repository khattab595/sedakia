import 'package:app/core/utils/constants.dart';
import 'package:app/src/settings/data/models/about_dto.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:app/core/network/api_response.dart';

import '../models/setting_dto.dart';

part 'settings_datasource.g.dart';

@Injectable()
@RestApi(baseUrl: kBaseUrl)
abstract class SettingsDatasource {
  @factoryMethod
  factory SettingsDatasource(Dio dio) = _SettingsDatasource;

  @GET('settings/mobile/v1/get-first')
  Future<ApiResponse<SettingDto>> fetchSetting();
}
