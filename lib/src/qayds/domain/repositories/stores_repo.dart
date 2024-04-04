
import '../../data/models/add_store_params.dart';
import '../../../profile/data/models/profile_dto.dart';

abstract class StoresRepo {
  Future<List<StoreDto>> fetchStores();
  Future<String> addStore(AddStoreParams params);
  Future<String> editStore(StoreDto store);
  Future<String> deleteStore(int id);
}
