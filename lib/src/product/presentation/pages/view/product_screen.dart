


import '../../../../main_index.dart';
import '../../widgets/product_item.dart';

class ProductScreen extends BaseStatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => ProductItem(),);
  }
}
