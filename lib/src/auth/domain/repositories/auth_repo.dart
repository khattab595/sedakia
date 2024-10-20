
import 'package:app/core/widgets/drop_down/drop_down.dart';

import '../../../more/domain/entities/more.dart';
import '../../data/models/complete_registration_params.dart';
import '../../data/models/login_dto.dart';
import '../../data/models/login_params.dart';
import '../../data/models/register_params.dart';
import '../../data/models/verification_code_params.dart';


abstract class AuthRepo {
  Future<String> login(LoginParams params);

}
