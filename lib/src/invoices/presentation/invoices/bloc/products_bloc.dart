import 'package:app/core/resources/data_state.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/bloc/base_cubit.dart';
import '../../../data/models/filter_params.dart';
import '../../../domain/entities/invoice.dart';
import '../../../domain/use_cases/products_usecase.dart';

@Injectable()
class ProductsCubit extends BaseCubit {
  final ProductsUseCase usecase;

  ProductsCubit(this.usecase);

  List<Invoice> allProducts = [];
  int page = 0;
  int lastPage = 1;

  fetchProducts(String type, {bool isRefresh = true}) async {
    isRefresh ? {page = 1, allProducts.clear()} : page++;
    executeBuilder(
      isRefresh: isRefresh,
      () => usecase.fetchProducts(type),
      onSuccess: (dto) {
        lastPage = dto.pagination?.totalPages ?? 1;
        final data = dto.data?.map((e) => Invoice.fromDto(e)).toList() ?? [];
        allProducts.addAll(data);
        emit(DataSuccess<List<Invoice>>(allProducts));
      },
    );
  }

  fetchProductsBySearch({String? search, bool isRefresh = true}) async {
    isRefresh ? {page = 1, allProducts.clear()} : page++;
    executeBuilder(
      isRefresh: isRefresh,
          () => usecase.fetchProductsBySearch(FilterParams(search: search, page: page)),
      onSuccess: (dto) {
        lastPage = dto.pagination?.totalPages ?? 1;
        final data = dto.data?.map((e) => Invoice.fromDto(e)).toList() ?? [];
        allProducts.addAll(data);
        emit(DataSuccess<List<Invoice>>(allProducts));
      },
    );
  }

}
