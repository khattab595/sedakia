
import 'package:injectable/injectable.dart';
import '../../../../core/bloc/base_cubit.dart';
import '../../data/repositories/departments_repo_imp.dart';



@Injectable()
class DepartmentCubit extends BaseCubit {
  final DepartmentsRepoImp _repo;

  DepartmentCubit(this._repo);

  fetchDepartmentData({required int id}) async {
    executeSuccess(() => _repo.fetchDepartmentData(id: id));
  }

}
