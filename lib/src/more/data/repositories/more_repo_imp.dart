import 'dart:io';

import 'package:injectable/injectable.dart';

import '../../../../core/utils/helper_methods.dart';
import '../../domain/entities/more.dart';
import '../../domain/repositories/more_repo.dart';
import '../data_sources/more_datasource.dart';
import '../models/communication_dto.dart';
import '../models/profile_dto.dart';

@Injectable(as: ProfileRepo)
class ProfileRepoImp extends ProfileRepo {
  final ProfileDataSource apiProvider;
  ProfileRepoImp(this.apiProvider);

  // @override
  // Future<Profile> fetchProfileData(bool isFromCash) async {
  //   ProfileDto profile = ProfileDto();
  //   if (isFromCash) {
  //     profile = await HelperMethods.getProfile();
  //   } else {
  //     final data = await apiProvider.fetchProfileData();
  //     profile = data.data!;
  //     await HelperMethods.saveProfile(profile);
  //   }
  //   return Profile.fromDto(profile);
  // }
}
