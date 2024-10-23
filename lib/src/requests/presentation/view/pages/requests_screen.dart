import 'package:app/core/widgets/texts/primary_texts.dart';

import '../../../../main_index.dart';
import '../../../domain/entities/Order_model.dart';
import '../widgets/request_item.dart';

class RequestsScreen extends BaseStatelessWidget {
  final OrderModel data;
  StreamStateInitial<OrderModel?> orderStreamData;
  RequestsScreen(
      {super.key, required this.data, required this.orderStreamData});
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        initialData: data,
        stream: orderStreamData.stream,
        builder: (context, snapshot) {
          return snapshot.data == null || snapshot.data!.data!.isEmpty
              ? Center(child: PrimaryMediumText(label: strings.the_list_is_empty))
              : ListView.builder(
                  itemCount: snapshot.data?.data?.length,
                  itemBuilder: (context, index) {
                    return RequestItem(
                      data: snapshot.data!.data![index],
                    );
                  },
                );
        });
  }
}
