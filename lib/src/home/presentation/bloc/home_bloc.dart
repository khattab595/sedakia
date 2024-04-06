import 'package:injectable/injectable.dart';

import '../../../../core/bloc/base_cubit.dart';
import '../../domain/use_cases/home_usecase.dart';




@Injectable()
class HomeCubit extends BaseCubit {
  final HomeUseCase usecase;

  HomeCubit(this.usecase);

  fetchHomeData() async {
    executeSuccess(() => usecase.fetchHomeData());
  }

}
