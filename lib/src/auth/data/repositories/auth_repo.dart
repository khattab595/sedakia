
import 'package:injectable/injectable.dart';
import 'package:app/src/auth/data/models/login_params.dart';

import '../../domain/repositories/base_auth_repo.dart';
import '../data_sources/auth_datasource.dart';
import '../models/country_dto.dart';
import '../models/register_params.dart';
import '../models/token_dto.dart';

@Injectable(as: BaseAuthRepo)
class AuthRepo extends BaseAuthRepo{
  final AuthDataSource  apiProvider;
  AuthRepo(this.apiProvider);

  @override
  Future<TokenDto> login(LoginParams params) async{
    final response = await apiProvider.login(params);
    return response.data!;
  }

  @override
  Future<TokenDto> register(RegisterParams params) async{
    final response = await apiProvider.register(params);
    return response.data!;
  }

  @override
  Future<List<CountryDto>> fetchCountries() async{
    final response = await apiProvider.fetchCountries();
    return response.data!;
  }

}