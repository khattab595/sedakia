 import 'package:injectable/injectable.dart';
import '../../../../../core/bloc/base_cubit.dart';
import '../../domain/use_cases/customers_usecase.dart';


@Injectable()
class CustomersBloc extends BaseCubit {
  final CustomersUseCase productUseCase;
  CustomersBloc(this.productUseCase);



}
