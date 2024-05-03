import 'package:injectable/injectable.dart';
import '../../../../core/bloc/base_cubit.dart';
import '../../domain/repositories/grades_repo.dart';

@Injectable()
class GradesCubit extends BaseCubit {
  final GradesRepo repo;

  GradesCubit(this.repo);

  fetchGradesData() async {
    executeSuccess(() => repo.fetchGradesData());
  }

}
