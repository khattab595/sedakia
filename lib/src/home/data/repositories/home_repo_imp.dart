import 'package:app/src/home/data/models/summary_dto.dart';
import 'package:injectable/injectable.dart';
import '../../domain/repositories/home_repo.dart';
import '../data_sources/home_datasource.dart';

@Injectable(as: HomeRepo)
class HomeRepoImp extends HomeRepo {
  final HomeDatasource datasource;

  HomeRepoImp(this.datasource);

  @override
  Future<SummaryDto> fetchSummary() async {
    final response = await datasource.fetchSummary();
    return response.payload!;
  }
}
