import 'package:injectable/injectable.dart';
import '../../../../core/bloc/base_cubit.dart';
import '../../domin/repositories/base_teacher_repo.dart';




@Injectable()
class TeacherCubit extends BaseCubit {
  final BaseTeacherRepo _repo;

  TeacherCubit(this._repo);

  fetchTeacherDetailsData({required int id}) async {
    executeSuccess(() => _repo.fetchTeacherDetailsData(id: id));
  }


}
