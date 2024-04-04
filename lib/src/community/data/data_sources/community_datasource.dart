import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:app/core/network/api_response.dart';
import 'package:app/core/utils/constants.dart';


import '../models/social_media_dto.dart';

part 'community_datasource.g.dart';
@Injectable()
@RestApi(baseUrl: kBaseUrl)
abstract class  CommunityDatasource{

  @factoryMethod
  factory CommunityDatasource(Dio dio) = _CommunityDatasource;

  @GET('/app/social_media/list')
  Future<ApiResponse<List<SocialMediaDto>>> fetchSocialMediaData();
}