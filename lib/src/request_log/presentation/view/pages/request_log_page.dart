import '../../../../../core/components/base_widget_bloc.dart';
import '../../../../../core/utils/navigator.dart';
import '../../../../../core/widgets/custom_empty_widget.dart';
import '../../../../../core/widgets/tabview/tabbar_widget.dart';
import '../../../../main_index.dart';
import '../../../../profile/presentation/bloc/profile_bloc.dart';
import '../../../data/models/course_dto.dart';
import '../../../domain/entities/course.dart';
import '../bloc/request_log_bloc.dart';
import 'request_log_screen.dart';

class RequestLogPage extends BaseBlocWidget<UnInitState, ProfileBloc> {
  RequestLogPage({Key? key}) : super(key: key);
  int id = 1;
  // @override
  // void loadInitialData(BuildContext context) {
  //   bloc.fetchRequestLog();
  // }
  @override
  Widget build(BuildContext context) {
    return mainFrame(
      floatingActionButton: InkWell(
        onTap: () {
          pushNamed(Routes.addRequestPage);
        },
        child: Container(
            height: 50,
            width: 50,
            decoration: Decorations.kDecorationBorderRadius(
              radius: 100,
              borderColor: AppColors.primaryLight,
              color: AppColors.primaryLight,
            ),
            child: const Icon(
              Icons.add,
              color: AppColors.backgroundColor,
            )),
      ),
      body: StatefulBuilder(builder: (context, setState) {
        return TabBarWidget(
          page: buildConsumer(context),
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
