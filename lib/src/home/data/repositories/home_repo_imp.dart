
import 'package:app/src/request_log/domain/entities/course.dart';
import 'package:injectable/injectable.dart';

import '../../../request_log/data/models/course_dto.dart';
import '../../domain/entities/home_data.dart';
import '../../domain/repositories/home_repo.dart';
import '../data_sources/home_datasource.dart';


@Injectable(as: HomeRepo)
class HomeRepoImp extends HomeRepo{
  final HomeDatasource  datasource;
  HomeRepoImp(this.datasource);


  @override
  Future<HomeData> fetchHomeData() async {
    final response = await datasource.fetchHomeData();
    return HomeData.fromJson(response.data!);
  }

}