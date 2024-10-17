
import 'package:injectable/injectable.dart';

  import '../../domain/repositories/requests_repo.dart';
import '../data_sources/requests_datasource.dart';

@Injectable(as: RequestsRepo)
class RequestsRepoImp extends RequestsRepo {
  final RequestsDatasource datasource;

  RequestsRepoImp(this.datasource);

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
