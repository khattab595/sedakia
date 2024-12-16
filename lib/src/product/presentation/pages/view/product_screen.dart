import '../../../../../core/widgets/texts/primary_texts.dart';
import '../../../../main_index.dart';
import '../../../data/models/product_dto.dart';
import '../../widgets/product_item.dart';

class ProductScreen extends BaseStatelessWidget {
  ProductScreen({super.key, required this.onRefresh,required this.data, required this.onDelete,required this.productStreamData});
  final ProductDto data;
  final Function(int id) onDelete;
  final Function( ) onRefresh;
  StreamStateInitial<ProductDto?> productStreamData;
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      initialData: data,
      stream: productStreamData.stream,
      builder: (context, snapshot) {
        return snapshot.data == null || snapshot.data!.data!.isEmpty
            ? Center(child: PrimaryMediumText(label: strings.the_list_is_empty))
            :ListView.builder(
          itemCount: snapshot.data?.data?.length,
          itemBuilder: (context, index) => ProductItem(
            data: snapshot.data!.data![index],
            onDelete: onDelete,
              onRefresh:onRefresh
          ),
        );
      }
    );
  }
}
