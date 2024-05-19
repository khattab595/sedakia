import 'package:app/core/commen/common_state.dart';
import 'package:app/src/request_log/domain/entities/course.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/bloc/base_cubit.dart';
import '../../domain/repositories/home_repo.dart';

@Injectable()
class HomeCubit extends BaseCubit {
  final HomeRepo _repo;

  HomeCubit(this._repo);

  StreamStateInitial<List<Course>?> projectsStream = StreamStateInitial();
  StreamStateInitial<Course?> currentProjectStream = StreamStateInitial();

  fetchInitialData() async {
    projectsStream.setData(await _repo.fetchProjects());
    currentProjectStream.setData(await _repo.fetchCurrentProject());
  }

  Future<void> fetchProjects() async {
    try {
      projectsStream.setData(null);
      projectsStream.setData(await _repo.fetchProjects());
    } catch (e) {
      projectsStream.setError(e);
    }
  }

  Future<void> fetchCurrentProject() async {
    try {
      currentProjectStream.setData(null);
      currentProjectStream.setData(await _repo.fetchCurrentProject());
    } catch (e) {
      currentProjectStream.setError(e);
    }
  }
}
