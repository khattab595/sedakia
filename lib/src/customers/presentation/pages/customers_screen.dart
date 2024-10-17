
import '../../../main_index.dart';
import '../widgets/customer_item.dart';

class CustomersScreen extends BaseStatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context,index){
      return CustomerItem();
    });
  }
}
