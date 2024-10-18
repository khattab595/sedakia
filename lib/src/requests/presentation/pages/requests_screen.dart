import '../../../main_index.dart';
import '../widgets/request_item.dart';

class RequestsScreen extends BaseStatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return RequestItem();
      },
    );
  }
}
