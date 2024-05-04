
import 'package:injectable/injectable.dart';
import '../../../../core/bloc/base_cubit.dart';
import '../../data/repositories/departments_repo_imp.dart';
import '../../domin/repositories/departments_repo.dart';



@Injectable()
class DepartmentCubit extends BaseCubit {
  final DepartmentsRepo _repo;

  DepartmentCubit(this._repo);

  fetchDepartmentData({required int id}) async {
    executeSuccess(() => _repo.fetchDepartmentData(id: id));
  }

}
