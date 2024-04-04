
import '../../data/models/home_dto.dart';
import '../entities/shipment_qr_code.dart';

abstract class BaseHomeRepo {
  Future<HomeDto> fetchHomeData();
  Future<String> reasonForDisconnection(String reason);
  Future<List<ShipmentQRCode>> scanToReceive(String id);
  Future<List<ShipmentQRCode>> scanToPick(String id);
}
