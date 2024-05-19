
import 'package:injectable/injectable.dart';
import '../../domain/entities/course.dart';
import '../../domain/repositories/request_log_repo.dart';
import '../data_sources/request_log_datasource.dart';


@Injectable(as: RequestLogRepo)
class RequestLogImp extends RequestLogRepo{
  final RequestLogDatasource  datasource;
  RequestLogImp(this.datasource);

  @override
  Future<List<Course>> fetchRequestLog() async{
    final response = await datasource.fetchRequestLog();
    return response.data?.map((e) => Course.fromDto(e)).toList() ?? [];
  }

  @override
  Future<String> addRequest() async {
    final response =  await datasource.addRequest();
    return response.message ?? '';
  }
}