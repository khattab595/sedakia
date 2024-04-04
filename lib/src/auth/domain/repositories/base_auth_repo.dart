
import '../../data/models/country_dto.dart';
import '../../data/models/login_params.dart';
import '../../data/models/register_params.dart';
import '../../data/models/token_dto.dart';


abstract class BaseAuthRepo {
  Future<TokenDto> login(LoginParams params);
  Future<TokenDto> register(RegisterParams params);
  Future<List<CountryDto>> fetchCountries();
}
