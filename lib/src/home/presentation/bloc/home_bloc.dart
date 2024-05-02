import 'package:app/core/commen/common_state.dart';
import 'package:app/src/home/domain/entities/slide.dart';
import 'package:app/src/my_courses/domain/entities/course.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/bloc/base_cubit.dart';
import '../../domain/entities/department.dart';
import '../../domain/entities/teacher.dart';
import '../../domain/repositories/home_repo.dart';




@Injectable()
class HomeCubit extends BaseCubit {
  final HomeRepo _repo;

  HomeCubit(this._repo);

  StreamStateInitial<List<Slide>?> slidesStream = StreamStateInitial();
  StreamStateInitial<Course?> recentlyStream = StreamStateInitial();
  StreamStateInitial<List<Department>?> departmentsStream = StreamStateInitial();
  StreamStateInitial<List<Course>?> recentlyCoursesStream = StreamStateInitial();
  StreamStateInitial<List<Teacher>?> teachersStream = StreamStateInitial();

  fetchInitialData() async {
    slidesStream.setData(await _repo.fetchSlides());
    recentlyStream.setData(await _repo.fetchRecentlyData());
    recentlyCoursesStream.setData(await _repo.fetchRecentlyCoursesData());
    departmentsStream.setData(await _repo.fetchDepartmentsData());
    teachersStream.setData(await _repo.fetchTeachersData());
  }

}
