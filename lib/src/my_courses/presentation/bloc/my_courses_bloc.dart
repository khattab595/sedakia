import 'package:injectable/injectable.dart';

import '../../../../core/bloc/base_cubit.dart';
import '../../domain/repositories/my_courses_repo.dart';

@Injectable()
class MyCoursesCubit extends BaseCubit {
  final MyCoursesRepo repo;

  MyCoursesCubit(this.repo);

  fetchMyCourses() async {
    executeSuccess(() => repo.fetchMyCourses());
  }
}
