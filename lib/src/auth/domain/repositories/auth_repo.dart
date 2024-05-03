
import 'package:app/core/widgets/drop_down/drop_down.dart';

import '../../../profile/domain/entities/profile.dart';
import '../../data/models/complete_registration_params.dart';
import '../../data/models/login_params.dart';
import '../../data/models/register_params.dart';
import '../../data/models/verification_code_params.dart';


abstract class AuthRepo {
  Future<Profile> login(LoginParams params);
  Future<String> register(RegisterParams params);
  Future<String> verificationCode(VerificationCodeParams params);
  Future<String> completeRegistration(CompleteRegistrationParams params);
  Future<List<DropDownItem>> fetchAcademicLevels();
  Future<List<DropDownItem>> fetchStageLevels(String academicLevelId);
}
