import 'package:injectable/injectable.dart';
import '../../../../../core/bloc/base_cubit.dart';
import '../../../../../core/utils/helper_methods.dart';
import '../../../../main_index.dart';
import '../../../../profile/domain/repositories/profile_repo.dart';
import '../../../data/models/course_subscription_params.dart';
import '../../../domain/repositories/courses_repo.dart';

@Injectable()
class CourseDetailsCubit extends BaseCubit {
  final CoursesRepo _repo;
  final ProfileRepo profileRepo;

  CourseDetailsCubit(this._repo, this.profileRepo);

  fetchTeacherDetailsData({required int id}) async {
    executeSuccess(() => _repo.fetchCourseDetailsData(id: id));
  }

  subscribeCourse(CourseSubscriptionParams params) async {
    executeEmitterListener(() => _repo.subscribeCourse(params));
  }

  void lunchSupport() {
    executeSuccessNoActionState(() => profileRepo.fetchCommunicationData(),
        onSuccess: (response) {
      HelperMethods.launchTelegram(response.Telegram ?? '');
    });
  }
}
