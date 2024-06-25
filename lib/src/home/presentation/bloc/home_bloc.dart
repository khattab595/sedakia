
import 'package:injectable/injectable.dart';
import '../../../../core/bloc/base_cubit.dart';
import '../../domain/repositories/home_repo.dart';

@Injectable()
class HomeCubit extends BaseCubit {
  final HomeRepo _repo;

  HomeCubit(this._repo);

  void fetchInitialData() {
    executeSuccess(() => _repo.fetchHomeData());
  }
}
