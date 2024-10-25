
import '../../../../main_index.dart';
import '../../../domain/entities/Category.dart';
import '../../widgets/category_item.dart';

class CategoriesScreen extends BaseStatelessWidget {
  final Function(int id) onDelete;
  final Function( ) onRefresh;
  final CategoryModel data;

  CategoriesScreen({super.key, required this.onRefresh, required this.data, required this.onDelete});
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8.0,
          mainAxisExtent: 170,
          crossAxisSpacing: 8.0,
        ),
        padding: 10.paddingAll + 10.paddingTop, // padding around the grid
        itemCount: data.data?.length,
        itemBuilder: (context, index) {
          return CategoryItem(
            data: data.data![index],
            onRefresh:onRefresh,
            onDelete: onDelete,
          );
        });
  }
}
