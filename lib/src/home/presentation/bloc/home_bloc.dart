import 'package:injectable/injectable.dart';
import '../../../../core/bloc/base_cubit.dart';
import '../../domain/repositories/base_home_repo.dart';




@Injectable()
class HomeCubit extends BaseCubit {
  final BaseHomeRepo _repo;

  HomeCubit(this._repo);

  fetchDepartmentsData() async {
    executeSuccess(() => _repo.fetchDepartmentsData());
  }
  fetchTeachersData() async {
    executeSuccess(() => _repo.fetchTeachersData());
  }
  fetchRecentlyData() async {
    executeSuccess(() => _repo.fetchRecentlyData());
  }
  fetchRecentlyCoursesData() async {
    executeSuccess(() => _repo.fetchRecentlyCoursesData());
  }


  fetchHomeData() async {
    // executeSuccess(() => _repo.fetchDepartmentsData());
  }

}
