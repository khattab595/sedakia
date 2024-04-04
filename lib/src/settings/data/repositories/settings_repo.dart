
import 'package:injectable/injectable.dart';
import 'package:app/src/settings/data/data_sources/settings_datasource.dart';

import '../../domain/repositories/base_settings_repo.dart';

@Injectable(as: BaseSettingsRepo)
class SettingsRepo extends BaseSettingsRepo{
  final SettingsDatasource  apiProvider;
  SettingsRepo(this.apiProvider);


  @override
  Future<String> fetchAboutLogeste() async{
    final data = await apiProvider.fetchAboutLogeste();
    return data.data!;
  }

}