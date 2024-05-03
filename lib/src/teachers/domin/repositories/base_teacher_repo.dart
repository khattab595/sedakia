

import '../../../../core/network/api_response.dart';
import '../../data/models/teacher_details_dto.dart';
import '../entities/teacher_details.dart';

abstract class BaseTeacherRepo {
  Future<TeacherDetails> fetchTeacherDetailsData({required int id});

}