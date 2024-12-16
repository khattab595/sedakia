import '../../../../core/widgets/texts/primary_texts.dart';
import '../../../main_index.dart';
import '../../domain/entities/Customer_model.dart';
import '../widgets/customer_item.dart';

class CustomersScreen extends BaseStatelessWidget {
  CustomersScreen({super.key, required this.data,required this.customerStreamData});
  final CustomerModel data;
  StreamStateInitial<CustomerModel?> customerStreamData ;
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      initialData: data,
      stream: customerStreamData.stream,
      builder: (context, snapshot) {
        return snapshot.data == null || snapshot.data!.data!.isEmpty
            ? Center(child: PrimaryMediumText(label: strings.the_list_is_empty))
            :ListView.builder(
            itemCount: snapshot.data?.data?.length,
            itemBuilder: (context, index) {
              return CustomerItem(
                data: snapshot.data!.data![index],
              );
            });
      }
    );
  }
}
