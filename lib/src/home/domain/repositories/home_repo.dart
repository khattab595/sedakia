import '../../data/models/monthly_dto.dart';
import '../../data/models/summary_dto.dart';

abstract class HomeRepo {
  Future<SummaryDto> fetchSummary();
  Future<List<MonthlyDto>> fetchMonthly();
}
