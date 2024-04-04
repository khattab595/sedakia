
import 'package:injectable/injectable.dart';

import '../../domain/entities/shipment_qr_code.dart';
import '../../domain/repositories/base_home_repo.dart';
import '../data_sources/home_datasource.dart';
import '../models/home_dto.dart';


@Injectable(as: BaseHomeRepo)
class HomeRepo extends BaseHomeRepo{
  final HomeDatasource  datasource;
  HomeRepo(this.datasource);

  @override
  Future<HomeDto> fetchHomeData() async {
    final response =  await datasource.fetchHomeData();
    return response.data!;
  }

  @override
  Future<String> reasonForDisconnection(String reason) async {
    final response =  await datasource.reasonForDisconnection(reason);
    return response.data!;
  }

  @override
  Future<List<ShipmentQRCode>> scanToReceive(String id) async {
    final response =  await datasource.scanToReceive(id);
    return response.data!;
  }

  @override
  Future<List<ShipmentQRCode>> scanToPick(String id) async {
    final response =  await datasource.scanToPick(id);
    return response.data!;
  }


}