import '../../data/models/summary_dto.dart';

abstract class HomeRepo {
  Future<SummaryDto> fetchSummary();
}
