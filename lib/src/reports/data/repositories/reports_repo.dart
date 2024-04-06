
import 'package:injectable/injectable.dart';

import '../../domain/repositories/base_reports_repo.dart';
 import '../data_sources/reports_datasource.dart';

@Injectable(as: BaseReportsRepo)
class ReportRepo extends BaseReportsRepo{
  final ReportsDatasource  apiProvider;
  ReportRepo(this.apiProvider);


  // @override
  // Future<String> fetchAboutLogeste() async{
  //   final data = await apiProvider.fetchAboutLogeste();
  //   return data.data!;
  // }

}