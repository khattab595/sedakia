import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:app/core/network/api_response.dart';
import 'package:app/core/utils/constants.dart';

import '../models/add_store_params.dart';
import '../../../profile/data/models/profile_dto.dart';

part 'stores_datasource.g.dart';
@Injectable()
@RestApi(baseUrl: kBaseUrl)
abstract class  StoresDatasource{

  @factoryMethod
  factory StoresDatasource(Dio dio) = _StoresDatasource;

  @GET('/app/setting/qayds')
  Future<ApiResponse<List>> fetchStores();

  @POST('/app/setting/store/add')
  Future<ApiResponse> addStore(@Body() AddStoreParams params);

  @POST('/app/setting/store/edite')
  Future<ApiResponse> editStore(@Body()  store);

  @POST('/app/setting/store/delete/{id}')
  Future<ApiResponse> deleteStore(@Path('id') int id);
}