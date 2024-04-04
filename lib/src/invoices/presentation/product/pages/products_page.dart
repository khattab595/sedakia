
import '../../../../../core/components/base_widget_bloc.dart';
import '../../../../main_index.dart';
import '../../../domain/entities/product.dart';
import '../bloc/products_bloc.dart';
import 'products_screen.dart';

class ProductsPage extends BaseBlocWidget<DataSuccess<List<Product>>, ProductsCubit> {
  ProductsPage({Key? key}) : super(key: key);


  @override
  void loadInitialData(BuildContext context) {
    bloc.fetchProducts(getArguments(context) ?? 'all');
  }

  @override
  Widget buildWidget(BuildContext context, DataSuccess<List<Product>> state) {
    return ProductsScreen(
      products: state.data ?? [],
      categoryName: getArguments(context),
      onSearch: (value) {},
      onFavorite: (id) => bloc.toggleFavorite(id),
    );
  }

  @override
  String? title(BuildContext context) {
    return getArguments(context) ?? strings.products;
  }

}
