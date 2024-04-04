import '../../../../main_index.dart';
import '../../../domain/entities/product.dart';
import '../widgets/product_item.dart';

class ProductsScreen extends BaseStatelessWidget {
  final List<Product> products;
  final String? categoryName;
  final Function(int)? onFavorite;
  final Function(String)? onSearch;

  ProductsScreen(
      {Key? key, required this.products, this.onSearch, this.categoryName, this.onFavorite})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: products.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.8,
        crossAxisSpacing: 5,
        mainAxisSpacing: 15,
      ),
      shrinkWrap: true,
      padding: 10.paddingAll,
      itemBuilder: (context, index) {
        return ProductItem(
          product: products[index],
          onFavorite: () {
            onFavorite?.call(products[index].id ?? 0);
          },
        );
      },
    );
  }
}
