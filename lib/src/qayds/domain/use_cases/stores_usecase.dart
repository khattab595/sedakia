import 'package:app/src/profile/data/models/profile_dto.dart';
import 'package:injectable/injectable.dart';

import '../../data/models/add_store_params.dart';
import '../repositories/stores_repo.dart';

@Injectable()
class StoresUseCase {
  final StoresRepo repository;

  StoresUseCase(this.repository);

  Future<List<StoreDto>> fetchStores() async {
   return await repository.fetchStores();
  }

  Future<String> addStore(AddStoreParams params) async {
    return await repository.addStore(params);
  }

  Future<String> editStore(StoreDto store) async {
    return await repository.editStore(store);
  }

  Future<String> deleteStore(int id) async {
    return await repository.deleteStore(id);
  }

}
