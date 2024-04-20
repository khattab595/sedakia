
import 'package:injectable/injectable.dart';

import '../models/change_password_params.dart';
import '../../domain/repositories/forgot_password_repo.dart';
import '../data_sources/forgot_password_datasource.dart';
import '../models/forgot_password_params.dart';

@Injectable(as: ForgotPasswordRepo)
class ForgotPasswordRepoImp extends ForgotPasswordRepo{
  final ForgotPasswordDataSource  apiProvider;
  ForgotPasswordRepoImp(this.apiProvider);

  @override
  Future<String> enterPhoneNumber(String phoneNumber) async{
    final response = await apiProvider.enterPhoneNumber(phoneNumber);
    return response.message ?? '';
  }

  @override
  Future<String> enterCode(String code) async{
    final response = await apiProvider.enterCode(code);
    return response.message ?? '';
  }

  @override
  Future<String> forgotPassword(ForgotPasswordParams params) async{
    final response = await apiProvider.forgotPassword(params);
    return response.message ?? '';
  }

  @override
  Future<String> updatePassword(ChangePasswordParams params) async{
    final response = await apiProvider.updatePassword(params);
    return response.message ?? '';
  }
}