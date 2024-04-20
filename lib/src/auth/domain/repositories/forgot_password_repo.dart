
import '../../data/models/change_password_params.dart';
import '../../data/models/forgot_password_params.dart';



abstract class ForgotPasswordRepo {
  Future<String> enterPhoneNumber(String phoneNumber);
  Future<String> enterCode(String code);
  Future<String> forgotPassword(ForgotPasswordParams params);
  Future<String> updatePassword(ChangePasswordParams params);
}
