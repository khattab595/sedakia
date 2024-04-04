import 'package:app/core/components/base_widget_bloc.dart';

import '../../../main_index.dart';
import '../../../invoices/domain/entities/product.dart';
import '../../../invoices/presentation/product/pages/products_screen.dart';
import '../bloc/favorites_bloc.dart';

class FavoritesPage
    extends BaseBlocWidget<DataSuccess<List<Product>>, FavoritesCubit> {
  FavoritesPage({Key? key}) : super(key: key);

  @override
  void loadInitialData(BuildContext context) {
    bloc.fetchFavorites();
  }

  @override
  String? title(context) => strings.favorites;

  @override
  Widget buildWidget(BuildContext context, DataSuccess<List<Product>> state) {
    return ProductsScreen(
      products: state.data ?? [],
      onSearch: (value) {},
    );
  }
}
