
import '../../../../../core/components/base_widget_bloc.dart';
import '../../../../home/presentation/widgets/filter_date_widget.dart';
import '../../../../main_index.dart';
import '../../../domain/entities/Order_model.dart';
import '../bloc/requests_bloc.dart';
import 'requests_screen.dart';

class RequestsPage extends BaseBlocWidget<DataSuccess<OrderModel>, RequestsBloc> {
  RequestsPage({Key? key}) : super(key: key);


  @override
  void loadInitialData(BuildContext context) {
    bloc.fetchOrder();
  }

  @override
  String? title(BuildContext context) {
    return strings.request_log;
  }

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return mainFrame(
        body: Column(
      children: [
        FilterInvoices(
          controller: searchController,
          onFilter: (filter) {
          },
        ),
        Expanded(
          child: buildConsumer(context),
        ),
      ],
    ));
  }

  @override
  Widget buildWidget(BuildContext context, DataSuccess<OrderModel> state) {
    return RequestsScreen(
      data: state.data!,
    );
  }
}
