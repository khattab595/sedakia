import 'package:app/core/network/pagination.dart';

import '../../../../../core/components/base_widget_bloc.dart';
import '../../../../../core/utils/navigator.dart';
import '../../../../../core/widgets/pagination/pagination_widget.dart';
import '../../../../../core/widgets/tabview/tabbar_widget.dart';
import '../../../../main_index.dart';
import '../../../../profile/presentation/bloc/profile_bloc.dart';
import '../../../data/models/my_request_params.dart';
import '../../../domain/entities/my_request.dart';
import '../bloc/request_log_bloc.dart';
import 'request_log_screen.dart';

class RequestLogPage extends BaseBlocWidget<DataSuccess<List<MyRequest>>, RequestLogCubit> {
  RequestLogPage({Key? key}) : super(key: key);
  int id = 0;

  int status = MyRequest.waiting;
  @override
  void loadInitialData(BuildContext context) {
    bloc.fetchRequestLog(status);
  }

  @override
  Widget build(BuildContext context) {
    return mainFrame(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          pushNamed(Routes.addRequestPage);
        },
        backgroundColor: context.primaryColor,
        shape: const StadiumBorder(),
        child: const Icon(
          Icons.add,
        ),
      ),
      body: StatefulBuilder(builder: (context, setState) {
        return Column(
          children: [
            TabBarWidget(
              // page: buildConsumer(context),
              initialIndex: id,
              onTap: (index) {
                status = index;
                setState(() {});
              },
              tabs: [
                TabItemModel(label: strings.waiting, id: MyRequest.waiting),
                TabItemModel(label: strings.rejected, id: MyRequest.rejected),
                TabItemModel(label: strings.approved, id: MyRequest.approved),
              ],
            ),
            Expanded(child: buildConsumer(context)),
          ],
        );
      }),
    );
  }

  @override
  Widget buildWidget(BuildContext context, DataSuccess<List<MyRequest>> state) {
    return PaginationWidget(
      refreshController: bloc.refreshController,
      onRefresh: () => bloc.fetchRequestLog(status),
      onLoading: () => bloc.fetchRequestLog(status, isRefresh: false),
      child: RequestLogScreen(
        requests: state.data!,
      ),
    );
  }

  @override
  String? title(BuildContext context) {
    return strings.request_log;
  }
}
