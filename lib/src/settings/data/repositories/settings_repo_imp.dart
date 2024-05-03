
import 'package:injectable/injectable.dart';
import 'package:app/src/settings/data/data_sources/settings_datasource.dart';

import '../../domain/entities/about.dart';
import '../../domain/entities/communication.dart';
import '../../domain/repositories/settings_repo.dart';
import '../models/about_dto.dart';
import '../models/communication_dto.dart';

@Injectable(as: SettingsRepo)
class SettingsRepoImp extends SettingsRepo{
  final SettingsDatasource  apiProvider;
  SettingsRepoImp(this.apiProvider);

  @override
  Future<About> fetchAboutUs() async {
    final response = await apiProvider.fetchAboutUs();
    return About.fromDto(response.data ?? AboutDto());
  }

  @override
  Future<About> fetchTermsConditions() async {
    final response = await apiProvider.fetchTermsConditions();
    return About.fromDto(response.data ?? AboutDto());
  }

  @override
  Future<Communication> fetchAboutLogeste() async {
    final response = await apiProvider.fetchAboutLogeste();
    return Communication.fromDto(response.data ?? CommunicationDto());
  }


}