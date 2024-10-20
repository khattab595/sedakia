import '../../../../main_index.dart';
import '../../../data/models/product_dto.dart';
import '../../widgets/product_item.dart';

class ProductScreen extends BaseStatelessWidget {
  ProductScreen({super.key, required this.data,required this.onDelete});
  final ProductDto data;
  final Function(int id) onDelete;
  @override

  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.data?.length,
      itemBuilder: (context, index) => ProductItem(data: data.data![index],onDelete: onDelete,),
    );
  }
}
