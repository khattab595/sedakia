import 'package:injectable/injectable.dart';

import '../../../../../core/bloc/base_cubit.dart';
import '../../../data/models/add_store_params.dart';
import '../../../domain/use_cases/stores_usecase.dart';

@Injectable()
class QaydPaymentCubit extends BaseCubit {
  final StoresUseCase usecase;

  QaydPaymentCubit(this.usecase);

  fetchStores() async {
    executeSuccess(() => usecase.fetchStores());
  }

  void qaydPayment(AddStoreParams params) {
    executeEmitterListener(() => usecase.addStore(params));
  }

}
