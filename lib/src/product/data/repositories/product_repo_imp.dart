
import 'package:injectable/injectable.dart';

  import '../../domain/repositories/product_repo.dart';
 import '../data_sources/product_datasource.dart';

@Injectable(as: ProductRepo)
class ProductRepoImp extends ProductRepo {
  final ProductDatasource datasource;

  ProductRepoImp(this.datasource);

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
