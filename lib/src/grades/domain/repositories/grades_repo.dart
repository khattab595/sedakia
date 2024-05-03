
import '../entities/grade.dart';

abstract class GradesRepo {
  Future<List<Grade>> fetchGradesData();
}
