
import 'package:injectable/injectable.dart';
import '../../../../core/bloc/base_cubit.dart';
import '../../data/repositories/course_details_repo.dart';



@Injectable()
class DepartmentCubit extends BaseCubit {
  final DepartmentRepo _repo;

  DepartmentCubit(this._repo);

  fetchDepartmentData({required int id}) async {
    executeSuccess(() => _repo.fetchDepartmentData(id: id));
  }

}
