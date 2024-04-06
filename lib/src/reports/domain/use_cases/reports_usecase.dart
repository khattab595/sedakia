import 'package:injectable/injectable.dart';

import '../repositories/base_reports_repo.dart';

@Injectable()
class ReportsUseCase {
 BaseReportsRepo repository ;
 ReportsUseCase(this.repository);

  // Future<String> fetchAboutLogeste() async{
  // //  return repository.fetchAboutLogeste();
  //   return 'Logeste is a mobile application that allows you to send money to your friends and family in Egypt and abroad, and you can also receive money from them.';
  // }

}