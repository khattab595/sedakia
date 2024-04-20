
import '../../../profile/domain/entities/profile.dart';
import '../../data/models/login_params.dart';
import '../../data/models/register_params.dart';


abstract class AuthRepo {
  Future<Profile> login(LoginParams params);
  Future<Profile> register(RegisterParams params);
}
