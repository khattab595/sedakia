import 'package:injectable/injectable.dart';

import '../../../../core/bloc/base_cubit.dart';
import '../../../../core/resources/data_state.dart';
import '../../data/models/change_password_params.dart';
import '../../data/models/forgot_password_params.dart';
import '../../domain/repositories/forgot_password_repo.dart';

@Injectable()
class ForgotPasswordCubit extends BaseCubit {
  final ForgotPasswordRepo repo;

  ForgotPasswordCubit(this.repo);

  enterPhoneNumber(String phoneNumber) async {
    emit(DataLoading());
    try {
      final response = await repo.enterPhoneNumber(phoneNumber);
      emit(DataSuccess(response));
    } catch (e) {
      emit(DataFailed(e));
    }
  }

  enterPinCode(String code) async {
    emit(DataLoading());
    try {
      final response = await repo.enterCode(code);
      emit(DataSuccess(response));
    } catch (e) {
      emit(DataFailed(e));
    }
  }

  forgotPassword(ForgotPasswordParams params) async {
    emit(DataLoading());
    try {
      final response = await repo.forgotPassword(params);
      emit(DataSuccess(response));
    } catch (e) {
      emit(DataFailed(e));
    }
  }

  changePassword(ChangePasswordParams params) async {
    executeEmitterListener(() => repo.updatePassword(params));
  }
}
