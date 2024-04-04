import 'package:app/core/utils/constants.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:app/core/network/api_response.dart';

import '../../../stores/presentation/pages/stores_screen.dart';
import '../../../stores/data/models/add_store_params.dart';
import '../models/change_password_params.dart';
import '../models/edit_profile_params.dart';
import '../models/profile_dto.dart';


part 'profile_datasource.g.dart';
@Injectable()
@RestApi(baseUrl: kBaseUrl)
abstract class  ProfileDataSource{

  @factoryMethod
  factory ProfileDataSource(Dio dio) = _ProfileDataSource;

  @GET('/app/setting')
  Future<ApiResponse<ProfileDto>> fetchProfileData();

  @POST('/app/setting/change_general_info')
  Future<ApiResponse<ProfileDto>> editProfileData(@Body() EditProfileParams params);

  @POST('/app/setting/delete')
  Future<ApiResponse<String>> deleteProfileData();

  @POST('/app/setting/changePassword')
  Future<ApiResponse> changePassword(@Body() ChangePasswordParams params);

  @POST('/app/setting/store/add')
  Future<ApiResponse<StoreDto>> addStore(@Body() AddStoreParams params);

  @POST('/app/setting/store/edite')
  Future<ApiResponse<StoreDto>> editStore(@Body() StoreDto store);

  @POST('/app/setting/store/delete/{id}')
  Future<ApiResponse> deleteStore(@Path('id') int id);
}