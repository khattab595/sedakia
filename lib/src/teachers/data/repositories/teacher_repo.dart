import 'package:app/src/teachers/data/models/teacher_details_dto.dart';
import 'package:injectable/injectable.dart';
import '../../domin/repositories/base_teacher_repo.dart';
import '../data_sources/teacher_datasource.dart';


@Injectable(as: BaseTeacherRepo)
class TeacherRepo extends BaseTeacherRepo{
  final TeacherDatasource  datasource;
  TeacherRepo(this.datasource);


  @override
  Future<TeacherDetailsDto> fetchTeacherDetailsData({required int id})async {
    final response =  await datasource.fetchTeacherDetailsData(id);
    return response.data!;
  }







}