 import 'package:injectable/injectable.dart';
import '../../../../../core/bloc/base_cubit.dart';
import '../../domain/use_cases/product_usecase.dart';


@Injectable()
class RequestsBloc extends BaseCubit {
  final RequestsUseCase requestsUseCase;
  RequestsBloc(this.requestsUseCase);



}
