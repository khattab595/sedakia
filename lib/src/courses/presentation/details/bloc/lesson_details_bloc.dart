import 'package:injectable/injectable.dart';
import '../../../../../core/bloc/base_cubit.dart';
import '../../../../main_index.dart';
import '../../../data/models/attending_lesson_params.dart';
import '../../../domain/repositories/courses_repo.dart';


@Injectable()
class LessonDetailsCubit extends BaseCubit {
  final CoursesRepo _repo;
  LessonDetailsCubit(this._repo);

  fetchTeacherDetailsData(int id) async {
    executeSuccess(() => _repo.fetchLessonDetails(id));
  }

  attendingMin(AttendingLessonParams params) async {
    executeSuccess(() => _repo.attendingMin(params));
  }
}
