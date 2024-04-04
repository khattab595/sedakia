import 'package:injectable/injectable.dart';

import '../../../../core/bloc/base_cubit.dart';
import '../../domain/use_cases/community_usecase.dart';

@Injectable()
class CommunityCubit extends BaseCubit {
  final CommunityUseCase usecase;

  CommunityCubit(this.usecase);

  fetchSocialMediaData() async {
    executeSuccess(() => usecase.fetchSocialMediaData());
  }
}
