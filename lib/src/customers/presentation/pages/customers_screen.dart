
import '../../../main_index.dart';
import '../../data/models/customer_dto.dart';
import '../../domain/entities/Customer_model.dart';
import '../widgets/customer_item.dart';

class CustomersScreen extends BaseStatelessWidget {
  CustomersScreen({super.key,required this.data});
  final CustomerModel data;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: data.data?.length,
        itemBuilder: (context,index){
      return CustomerItem(data: data.data![index],);
    });
  }
}
