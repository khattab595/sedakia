import '../../data/models/login_params.dart';

abstract class AuthRepo {
  Future<String> login(LoginParams params);
}
