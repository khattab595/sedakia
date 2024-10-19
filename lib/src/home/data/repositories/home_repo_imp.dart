import 'package:app/core/utils/helper_methods.dart';
import 'package:injectable/injectable.dart';
import '../../../more/data/models/profile_dto.dart';
import '../../domain/entities/home_data.dart';
import '../../domain/repositories/home_repo.dart';
import '../data_sources/home_datasource.dart';

@Injectable(as: HomeRepo)
class HomeRepoImp extends HomeRepo {
  final HomeDatasource datasource;

  HomeRepoImp(this.datasource);

  // @override
  // Future<HomeData> fetchHomeData() async {
  //   final response = await datasource.fetchHomeData();
  //   ProfileDto profile = await HelperMethods.getProfile();
  //   HomeData data = HomeData.fromJson(response.data!);
  //   data.employeeName =
  //       '${profile.firstName} ${profile.secondName} ${profile.lastName}';
  //   data.employeeImage = profile.image;
  //   return data;
  // }
}
