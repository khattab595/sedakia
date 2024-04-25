
import 'package:app/src/profile/domain/repositories/profile_repo.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/bloc/base_cubit.dart';

@Injectable()
class ReferenceBloc extends BaseCubit {
  final ProfileRepo repo;

  ReferenceBloc(this.repo);

}
