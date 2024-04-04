import 'package:app/core/utils/helper_methods.dart';
import 'package:app/src/auth/data/models/country_dto.dart';
import 'package:app/src/auth/data/models/token_dto.dart';
import 'package:injectable/injectable.dart';

import '../../data/models/login_params.dart';
import '../../data/models/register_params.dart';
import '../entities/country.dart';
import '../repositories/base_auth_repo.dart';

@Injectable()
class AuthUseCase {
  final BaseAuthRepo repository;

  AuthUseCase(this.repository);

  Future<TokenDto> login(LoginParams params) async {
    final data = await repository.login(params);
    HelperMethods.saveToken(data.token ?? '');
    return data;
  }

  Future<TokenDto> register(RegisterParams params) async {
    final data = await repository.register(params);
    HelperMethods.saveToken(data.token ?? '');
    return data;
  }

  Future<List<Country>> fetchCountries() async {
    final dataDto = await repository.fetchCountries();
    return dataDto.map((e) => Country.fromDto(e)).toList();
  }
}
