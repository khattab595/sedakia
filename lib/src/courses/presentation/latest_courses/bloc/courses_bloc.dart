import 'package:app/core/di/injector.dart';
import 'package:injectable/injectable.dart';
import '../../../../../../core/bloc/base_cubit.dart';
import '../../../../../../core/resources/data_state.dart';
import '../../../../../core/commen/common_state.dart';
import '../../../../departments/domin/repositories/departments_repo.dart';
import '../../../../favorite/domin/repositories/favorite_repo.dart';
import '../../../../favorite/data/models/favorite_params.dart';
import '../../../../home/domain/entities/department.dart';
import '../../../../home/domain/repositories/home_repo.dart';
import '../../../domain/entities/course.dart';

@Injectable()
class CoursesCubit extends BaseCubit {
  final FavoriteRepo favoriteRepo;
  final DepartmentsRepo _repo;
  final HomeRepo homeRepo;

  CoursesCubit(this.favoriteRepo, this._repo, this.homeRepo);

  StreamStateInitial<List<Department>?> departmentsStream =
  StreamStateInitial();

  Future<bool> toggleFavorite(FavoriteParams params) async {
    int id = params.id;
    bool isFavorite = false;
    await executeListener(
        () => params.isFavorite
            ? favoriteRepo.removeFavorite(id: id)
            : favoriteRepo.addFavorite(id: id), onSuccess: (data) {
      isFavorite = !params.isFavorite;
      emit((SuccessState()));
    });
    return isFavorite;
  }

  fetchDepartmentCourses(List<Course> courses) async {
    emit(DataSuccess<List<Course>>(courses));
  }

  filterCourses(int departmentId) async {
    executeSuccess(() => _repo.fetchDepartmentData(id: departmentId));
  }

  fetchDepartmentsStream() async {
    print('fetchDepartmentsStream');
    departmentsStream.setData(null);
    final strings = injector<ServicesLocator>().strings;
    try {
      final departments = await homeRepo.fetchDepartmentsData();
      print('departments.length ${departments.length}');
      departments.insert(0, Department(id: 0, name: strings.all));
      departmentsStream.setData(departments);
    } catch (e) {
      departmentsStream.setError(e.toString());
    }
  }

  fetchCoursesForStream(int departmentId) async {
    print('fetchCoursesForStream');
    executeSuccess(() => departmentId == 0 ? homeRepo.fetchRecentlyCoursesData() : _repo.fetchDepartmentData(id: departmentId));
  }
}
