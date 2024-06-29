
import '../../../../main_index.dart';
import '../../../domain/entities/my_request.dart';
import '../widgets/request_log.dart';

class RequestLogScreen extends BaseStatelessWidget {
  final List<MyRequest> requests;

  RequestLogScreen({Key? key, required this.requests}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: requests.length,
      padding: 80.paddingBottom,
      itemBuilder: (context, index) {
        return RequestLogItem(request: requests[index]);
      },
    );
  }
}
