import 'package:injectable/injectable.dart';
import '../../../../core/bloc/base_cubit.dart';
import '../../../main_index.dart';
import '../../domain/use_cases/home_usecase.dart';

@Injectable()
class HomeCubit extends BaseCubit {
  final HomeUseCase homeUseCase;

  HomeCubit(this.homeUseCase);

  void fetchSummary() {
    executeDoubleSuccess(() => homeUseCase.fetchSummary(),() => homeUseCase.fetchMonthly(),);
  }



}
