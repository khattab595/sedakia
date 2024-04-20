
import 'package:injectable/injectable.dart';

import '../models/add_store_params.dart';
import '../../../profile/data/models/profile_dto.dart';
import '../../domain/repositories/stores_repo.dart';
import '../data_sources/stores_datasource.dart';


@Injectable(as: StoresRepo)
class StoresRepoImp extends StoresRepo{
  final StoresDatasource  datasource;
  StoresRepoImp(this.datasource);

  @override
  Future<List> fetchStores() async{
    final data = await datasource.fetchStores();
    return data.data!;
  }

  @override
  Future<String> addStore(AddStoreParams params) async {
    final response = await datasource.addStore(params);
    return response.message ?? '';
  }

  @override
  Future<String> editStore( store) async {
    final response = await datasource.editStore(store);
    return response.message ?? '';
  }

  @override
  Future<String> deleteStore(int id) async {
    final response = await datasource.deleteStore(id);
    return response.message ?? '';
  }

}