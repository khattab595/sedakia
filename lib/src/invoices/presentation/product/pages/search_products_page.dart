
import '../../../../../core/components/base_widget_bloc.dart';
import '../../../../../core/widgets/text-field/custom_text_field.dart';
import '../../../../main_index.dart';
import '../../../domain/entities/product.dart';
import '../bloc/products_bloc.dart';
import 'products_screen.dart';

class SearchProductsPage extends BaseBlocWidget<DataSuccess<List<Product>>, ProductsCubit> {
  SearchProductsPage({Key? key}) : super(key: key);


  @override
  void loadInitialData(BuildContext context) {
    bloc.fetchProductsBySearch();
  }

  @override
  Widget build(BuildContext context) {
    return mainFrame(
      body: Column(
        children: [
          Padding(
            padding: 10.paddingAll,
            child: CustomTextField(
              hintText: strings.search_products_here,
              isValidator: false,
              onChanged: (value) {
                bloc.fetchProductsBySearch(search: value);
              },
            ),
          ),
          Expanded(
            child: buildConsumer(context),
          ),
        ],
      ),
    );
  }

  @override
  Widget buildWidget(BuildContext context, DataSuccess<List<Product>> state) {
    return ProductsScreen(
      products: state.data ?? [],
      onSearch: (value) {},
      onFavorite: (id) => bloc.toggleFavorite(id),
    );
  }

  @override
  String? title(BuildContext context) {
    return strings.products;
  }
}
