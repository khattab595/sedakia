import 'package:injectable/injectable.dart';

import '../../../../core/bloc/base_cubit.dart';
import '../../../profile/data/models/profile_dto.dart';
import '../../data/models/add_store_params.dart';
import '../../domain/use_cases/stores_usecase.dart';

@Injectable()
class StoresCubit extends BaseCubit {
  final StoresUseCase usecase;

  StoresCubit(this.usecase);

  fetchStores() async {
    executeSuccess(() => usecase.fetchStores());
  }

  void addStore(AddStoreParams params) {
    executeEmitterListener(() => usecase.addStore(params));
  }

  void editStore(StoreDto store) async {
    executeEmitterListener(() => usecase.editStore(store));
  }

  void deleteStore(int id) async {
    executeEmitterListener(() => usecase.deleteStore(id));
  }

}
