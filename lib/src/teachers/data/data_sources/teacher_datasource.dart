import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../core/network/api_response.dart';
import '../../../../core/utils/constants.dart';
import '../models/teacher_details_dto.dart';

part 'teacher_datasource.g.dart';
@Injectable()
@RestApi(baseUrl: kBaseUrl)
abstract class  TeacherDatasource{

  @factoryMethod
  factory TeacherDatasource(Dio dio) = _TeacherDatasource;

  @GET('/TeacherDetails?teacher_id={id}')
  Future<ApiResponse<TeacherDetailsDto>> fetchTeacherDetailsData(@Path('id') int id);


}