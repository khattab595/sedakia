
import 'package:injectable/injectable.dart';

  import '../../domain/repositories/customers_repo.dart';
 import '../data_sources/customers_datasource.dart';

@Injectable(as: CustomersRepo)
class CustomersRepoImp extends CustomersRepo {
  final CustomersDatasource datasource;

  CustomersRepoImp(this.datasource);

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
