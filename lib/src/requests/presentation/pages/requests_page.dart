import '../../../../core/components/base_widget_bloc.dart';
import '../../../main_index.dart';
 import '../bloc/requests_bloc.dart';
import 'requests_screen.dart';


class RequestsPage extends BaseBlocWidget<UnInitState, RequestsBloc> {
  RequestsPage({Key? key}) : super(key: key);

  // @override
  // void loadInitialData(BuildContext context) {
  //   bloc.fetchInitialData();
  // }

  @override
  Widget buildWidget(
      BuildContext context,UnInitState state) {
    return RequestsScreen(

    );
  }
}
