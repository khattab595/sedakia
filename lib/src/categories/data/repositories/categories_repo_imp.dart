
import 'package:injectable/injectable.dart';

  import '../../domain/repositories/categories_repo.dart';
import '../data_sources/catagory_datasource.dart';

@Injectable(as: CategoriesRepo)
class CategoriesRepoImp extends CategoriesRepo {
  final CategoriesDatasource datasource;

  CategoriesRepoImp(this.datasource);

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
