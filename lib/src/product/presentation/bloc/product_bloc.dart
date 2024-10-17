 import 'package:injectable/injectable.dart';
import '../../../../../core/bloc/base_cubit.dart';
import '../../domain/use_cases/product_usecase.dart';


@Injectable()
class ProductBloc extends BaseCubit {
  final ProductUseCase productUseCase;
  ProductBloc(this.productUseCase);



}
