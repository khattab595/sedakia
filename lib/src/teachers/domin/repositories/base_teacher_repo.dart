

import '../../../../core/network/api_response.dart';
import '../../data/models/teacher_details_dto.dart';

abstract class BaseTeacherRepo {
  Future<TeacherDetailsDto> fetchTeacherDetailsData({required int id});

}