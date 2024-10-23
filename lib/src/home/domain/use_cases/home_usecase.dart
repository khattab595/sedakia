import 'package:injectable/injectable.dart';
import '../entities/Monthly_model.dart';
import '../entities/Summary_model.dart';
import '../repositories/home_repo.dart';

@Injectable()
class HomeUseCase {
  final HomeRepo homeRepo;

  HomeUseCase(this.homeRepo);

  Future<SummaryModel> fetchSummary() async {
    final result = await homeRepo.fetchSummary();
    final data = SummaryModel.fromDto(result);
    return data;
  }

  Future<MonthlyModel> fetchMonthly() async {
    final result = await homeRepo.fetchMonthly();
    final data = MonthlyModel.fromDto(result);
    return data;
  }
}
