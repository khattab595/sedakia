 import 'package:injectable/injectable.dart';
import '../../../../../core/bloc/base_cubit.dart';
import '../../../domain/use_cases/product_usecase.dart';


@Injectable()
class RequestDetailsBloc extends BaseCubit {
  final RequestsUseCase requestsUseCase;
  RequestDetailsBloc(this.requestsUseCase);



}
