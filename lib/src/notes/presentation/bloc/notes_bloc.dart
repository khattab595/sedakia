
import 'package:injectable/injectable.dart';

import '../../../../core/bloc/base_cubit.dart';
import '../../../profile/domain/repositories/profile_repo.dart';

@Injectable()
class NoteBloc extends BaseCubit {
  final ProfileRepo repo;

  NoteBloc(this.repo);

}
