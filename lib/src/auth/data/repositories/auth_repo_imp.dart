import 'dart:io';

import 'package:app/core/firebase/notification_service.dart';
import 'package:injectable/injectable.dart';
import 'package:app/src/auth/data/models/login_params.dart';

import '../../../../core/utils/helper_methods.dart';
import '../../../../core/widgets/drop_down/drop_down.dart';
import '../../../more/data/models/profile_dto.dart';
import '../../../more/domain/entities/more.dart';
import '../../domain/repositories/auth_repo.dart';
import '../data_sources/auth_datasource.dart';
import '../models/complete_registration_params.dart';
import '../models/login_dto.dart';
import '../models/register_params.dart';
import '../models/verification_code_params.dart';

@Injectable(as: AuthRepo)
class AuthRepoImp extends AuthRepo {
  final AuthDataSource apiProvider;

  AuthRepoImp(this.apiProvider);

  @override
  Future<String> login(LoginParams params) async {
   // params.fcmToken = await FirebaseNotification().getToken();
    final response = await apiProvider.login(params);
   // await HelperMethods.saveProfile(response.data ?? ProfileDto());
    return response.message!;
  }


}
