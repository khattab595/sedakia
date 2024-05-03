
import 'package:injectable/injectable.dart';
import '../../domain/entities/grade.dart';
import '../../domain/repositories/grades_repo.dart';
import '../data_sources/grades_datasource.dart';
import '../models/grade_dto.dart';


@Injectable(as: GradesRepo)
class GradesRepoImp extends GradesRepo{
  final GradesDatasource  datasource;
  GradesRepoImp(this.datasource);

  @override
  Future<List<Grade>> fetchGradesData() async{
    final response = await datasource.fetchGradesData();
    return response.data?.map((e) => Grade.fromDto(e)).toList()??[];
  }

}