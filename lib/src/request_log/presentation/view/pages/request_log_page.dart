import '../../../../../core/components/base_widget_bloc.dart';
import '../../../../../core/utils/navigator.dart';
import '../../../../../core/widgets/tabview/tabbar_widget.dart';
import '../../../../main_index.dart';
import '../../../../profile/presentation/bloc/profile_bloc.dart';
import 'request_log_screen.dart';

class RequestLogPage extends BaseBlocWidget<UnInitState, ProfileBloc> {
  RequestLogPage({Key? key}) : super(key: key);
  int id = 0;
  // @override
  // void loadInitialData(BuildContext context) {
  //   bloc.fetchRequestLog();
  // }
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
                id = index;
                print(id);
                print("iioioioioio");
                setState(() {});
              },
              tabs: [
                TabItemModel(label: strings.waiting, id: 0),
                TabItemModel(label: strings.rejected, id: 1),
                TabItemModel(label: strings.approved, id: 2),
              ],
            ),
            Expanded(child: buildConsumer(context)),
          ],
        );
      }),
    );
  }

  @override
  Widget buildWidget(BuildContext context, UnInitState state) {
    return RequestLogScreen(
      id: id,
    );
  }

  @override
  String? title(BuildContext context) {
    return strings.request_log;
  }
}
