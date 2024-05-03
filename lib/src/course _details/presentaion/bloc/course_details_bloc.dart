import 'package:injectable/injectable.dart';
import '../../../../core/bloc/base_cubit.dart';
import '../../../main_index.dart';
import '../../domin/repositories/base_course_details_repo.dart';


@Injectable()
class CourseDetailsCubit extends BaseCubit {
  final BaseCourseDetailsRepo _repo;
  CourseDetailsCubit(this._repo);

  fetchTeacherDetailsData({required int id}) async {
    executeSuccess(() => _repo.fetchCourseDetailsData(id: id));
  }
  subscribeCourse({required int courseId,required String courseCode}) async {
    executeSuccess(() => _repo.subscribeCourse(courseId: courseId, courseCode: courseCode));
  }
}
