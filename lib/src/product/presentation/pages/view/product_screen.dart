


import '../../../../main_index.dart';
import '../../../data/models/product_dto.dart';
import '../../widgets/product_item.dart';

class ProductScreen extends BaseStatelessWidget {
  ProductScreen({super.key,
  //  required this.data
  });
//final List<ProductData> data;
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => ProductItem(
        //  data:data[index]
      ),);
  }
}
