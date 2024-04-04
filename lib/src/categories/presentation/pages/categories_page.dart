import 'package:app/core/widgets/tabview/tabbar_widget.dart';
import 'package:app/src/main_index.dart';
import 'package:app/src/products/domain/entities/product.dart';
import 'package:app/src/products/presentation/product/pages/products_screen.dart';
import '../../../../../core/components/base_widget_bloc.dart';
import '../../domain/entities/category.dart';
import '../bloc/categories_bloc.dart';
import 'categories_screen.dart';

class CategoriesPage
    extends BaseBlocWidget<DataSuccess<List<Category>>, CategoriesCubit> {
  CategoriesPage({Key? key}) : super(key: key);

  @override
  void loadInitialData(BuildContext context) {
    bloc.fetchCategories();
  }

  @override
  Widget buildWidget(BuildContext context, DataSuccess<List<Category>> state) {
    print('buildWidget CategoriesPage ${state.data}');
    return Column(
      children: [
        Expanded(
          child: TabBarWidget(
            onTap: (index) {
              bloc.fetchCategoryProduct(state.data![index].id ?? 0);
            },
            tabs: state.data
                    ?.map((e) => TabItemModel(
                          label: e.categoryName ?? '',
                          image: e.image ?? '',

                          page: StreamBuilder<List<Product>?>(
                              stream: bloc.productsStream.stream,
                              builder: (context, snapshot) {
                                return snapshot.data == null
                                    ? const Center(
                                        child: CircularProgressIndicator())
                                    : ProductsScreen(
                                        products: snapshot.data ?? [],
                                      );
                              }),
                        ))
                    .toList() ??
                [],
          ),
        ),
      ],
    );
  }

  @override
  String? title(BuildContext context) {
    return strings.categories;
  }
}
