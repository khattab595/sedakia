
import '../../data/models/department_dto.dart';
import '../../data/models/home_dto.dart';
import '../../data/models/recently_dto.dart';
import '../../data/models/teacher_dto.dart';
import '../entities/shipment_qr_code.dart';

abstract class BaseHomeRepo {
  Future<List<DepartmentDto>> fetchDepartmentsData();
  Future<List<TeacherDto>> fetchTeachersData();
  Future<RecentlyDto> fetchRecentlyData();
  Future<List<RecentlyDto>> fetchRecentlyCoursesData();


  Future<String> reasonForDisconnection(String reason);
  Future<List<ShipmentQRCode>> scanToReceive(String id);
  Future<List<ShipmentQRCode>> scanToPick(String id);

}