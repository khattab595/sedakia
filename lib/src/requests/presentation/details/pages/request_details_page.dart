
import '../../../../../core/components/base_widget_bloc.dart';
import '../../../../main_index.dart';
import '../bloc/request_details_bloc.dart';
import 'request_details_screen.dart';

class RequestDetailsPage extends BaseBlocWidget<UnInitState, RequestDetailsBloc> {
  RequestDetailsPage({Key? key}) : super(key: key);


  // @override
  // void loadInitialData(BuildContext context) {
  //   bloc.fetchInitialData();
  // }

  @override
  String? title(BuildContext context) {
    return strings.order_details;
  }

  @override
  Widget buildWidget(BuildContext context, UnInitState state) {
    return RequestDetailsScreen();
  }
}
