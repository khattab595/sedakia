import '../../../../main_index.dart';
import '../../../domain/entities/Order_model.dart';
import '../widgets/request_item.dart';

class RequestsScreen extends BaseStatelessWidget {
  final OrderModel data;

  RequestsScreen({super.key, required this.data});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.data?.length,
      itemBuilder: (context, index) {
        return RequestItem(data: data.data![index],);
      },
    );
  }
}
