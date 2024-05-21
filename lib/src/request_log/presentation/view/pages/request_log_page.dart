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

  // @override
  // void loadInitialData(BuildContext context) {
  //   bloc.fetchRequestLog();
  // }
  @override
  Widget build(BuildContext context) {
    return mainFrame(
      floatingActionButton: InkWell(
        onTap: () {},
        child: Container(
            height: 50,
            width: 50,
            decoration: Decorations.kDecorationBorderRadius(
              radius: 100,
              borderColor: primaryColor,
              color: primaryColor,
            ),
            child: const Icon(
              Icons.add,
              color: AppColors.backgroundColor,
            )),
      ),
      body: Column(
        children: [
          TabBarWidget(
            onTap: (index) {},
            tabs: [
              TabItemModel(
                label:strings.waiting,
              ),
              TabItemModel(
                label: strings.rejected,
              ),
              TabItemModel(
                label: strings.approved,
              ),
            ],
          ),
          Expanded(child: buildConsumer(context)),
        ],
      ),
    );
  }

  @override
  Widget buildWidget(BuildContext context, UnInitState state) {
    return RequestLogScreen(
        //   myCourses: state.data!,
        );
  }

  @override
  String? title(BuildContext context) {
    return strings.activity;
  }
}
