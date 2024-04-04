import 'package:app/core/exceptions/empty_list_exception.dart';
import 'package:app/core/resources/data_state.dart';
import 'package:app/src/wallet/domain/entities/transaction.dart';
import 'package:injectable/injectable.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';

import '../../../../../core/bloc/base_cubit.dart';
import '../../../domain/entities/payment_method.dart';
import '../../../domain/use_cases/wallet_usecase.dart';

@Injectable()
class AddPaymentMethodCubit extends BaseCubit {
  final WalletUseCase usecase;

  AddPaymentMethodCubit(this.usecase);

  fetchCreatePaymentField() {
    executeSuccess(() => usecase.fetchCreatePaymentField());
  }

}
