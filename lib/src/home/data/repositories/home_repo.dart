
import 'package:injectable/injectable.dart';

import '../../domain/entities/shipment_qr_code.dart';
import '../../domain/repositories/base_home_repo.dart';
import '../data_sources/home_datasource.dart';
import '../models/department_dto.dart';
import '../models/home_dto.dart';
import '../models/recently_dto.dart';
import '../models/teacher_dto.dart';


@Injectable(as: BaseHomeRepo)
class HomeRepo extends BaseHomeRepo{
  final HomeDatasource  datasource;
  HomeRepo(this.datasource);

  @override
  Future<List<DepartmentDto>> fetchDepartmentsData() async {
    final response =  await datasource.fetchDepartmentsData();
    return response.data!;
  }
  @override
  Future<List<TeacherDto>> fetchTeachersData() async {
    final response =  await datasource.fetchTeachersData();
    return response.data!;
  }
  @override
  Future<RecentlyDto> fetchRecentlyData() async {
    final response =  await datasource.fetchRecentlyData();
    return response.data!;
  }
  @override
  Future<List<RecentlyDto>> fetchRecentlyCoursesData() async {
    final response =  await datasource.fetchRecentlyCoursesData();
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