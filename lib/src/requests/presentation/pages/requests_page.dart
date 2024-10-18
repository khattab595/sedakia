import '../../../../core/components/base_widget_bloc.dart';
import '../../../../core/widgets/buttons/selection_button_chip.dart';
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
  Widget build(BuildContext context) {
    return mainFrame(
        body: Column(
      children: [
        SelectionButtonChip(
          items: [
            SelectionItem(id: '1', title: 'All'),
            SelectionItem(id: '2', title: 'Pending'),
            SelectionItem(id: '3', title: 'Accepted'),
            SelectionItem(id: '4', title: 'Rejected'),
          ],
          onSelected: (item) {
            // bloc.filterRequests(item.id);
          },
        ),
        Expanded(
          child: buildConsumer(context),
        ),
      ],
    ));
  }

  @override
  Widget buildWidget(BuildContext context, UnInitState state) {
    return RequestsScreen();
  }
}
