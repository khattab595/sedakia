import 'package:injectable/injectable.dart';

import '../../../../core/bloc/base_cubit.dart';
import '../../domain/repositories/courses_repo.dart';

@Injectable()
class MyCoursesCubit extends BaseCubit {
  final CoursesRepo repo;

  MyCoursesCubit(this.repo);

  fetchMyCourses() async {
    executeSuccess(() => repo.fetchMyCourses());
  }
}
