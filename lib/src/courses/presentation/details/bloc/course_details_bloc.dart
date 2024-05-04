import 'package:injectable/injectable.dart';
import '../../../../../core/bloc/base_cubit.dart';
import '../../../../main_index.dart';
import '../../../data/models/course_subscription_params.dart';
import '../../../domain/repositories/courses_repo.dart';


@Injectable()
class CourseDetailsCubit extends BaseCubit {
  final CoursesRepo _repo;
  CourseDetailsCubit(this._repo);

  fetchTeacherDetailsData({required int id}) async {
    executeSuccess(() => _repo.fetchCourseDetailsData(id: id));
  }

  subscribeCourse(CourseSubscriptionParams params) async {
    executeEmitterListener(() => _repo.subscribeCourse(params));
  }

}
