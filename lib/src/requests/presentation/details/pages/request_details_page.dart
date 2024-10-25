import '../../../../../core/components/base_widget_bloc.dart';
import '../../../../../core/utils/navigator.dart';
import '../../../../main_index.dart';
import '../../../data/models/order_details_dto.dart';
import '../bloc/request_details_bloc.dart';
import 'request_details_screen.dart';

class RequestDetailsPage
    extends BaseBlocWidget<DataSuccess<OrderDetailsDto>, RequestDetailsBloc> {
  RequestDetailsPage({Key? key, required this.id}) : super(key: key);
  final int id;
  @override
  void loadInitialData(BuildContext context) {
    bloc.orderDetails(id);
  }

  @override
  String? title(BuildContext context) {
    return strings.order_details;
  }

  @override
  Widget buildWidget(BuildContext context, DataSuccess<OrderDetailsDto> state) {
    return RequestDetailsScreen(
      data: state.data!,
      changeStatus: (params, id) => bloc.changeStatus(params, id),
    );
  }

  @override
  void onSuccessDismissed() {
    push(RequestDetailsPage(
      id: id,
    ));
  }
}
