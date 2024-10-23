import 'package:injectable/injectable.dart';
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
}
