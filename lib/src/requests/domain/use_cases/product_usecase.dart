

import 'package:injectable/injectable.dart';

import '../repositories/requests_repo.dart';

@Injectable()
class RequestsUseCase  {
  final RequestsRepo requestsRepo ;

  RequestsUseCase(this.requestsRepo);
/*

  Future<String> call({int? params}) async {
    final response = await jobOffersRepository.confirmRequiredTask(params!);
    return response.message ?? '';
  }


  Future<List<AllUserEntity>> call( ) async {
    final result = await repository.fetchUserType();
    final data = result.map((e) => AllUserEntity.fromDto(e)).toList();
    return data;
  }
   */

}