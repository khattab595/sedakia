import '../../../../core/components/base_widget_bloc.dart';
import '../../../main_index.dart';
import '../../domain/entities/Summary_model.dart';
import '../bloc/home_bloc.dart';
import 'home_screen.dart';

class HomePage extends BaseBlocWidget<DataSuccess<SummaryModel>, HomeCubit> {
  HomePage({Key? key}) : super(key: key);

  @override
  void loadInitialData(BuildContext context) {
    bloc.fetchSummary();
  }

  // @override
  // String? title(BuildContext context) {
  //   return 'Statistics';
  // }

  @override
  Widget buildWidget(BuildContext context, DataSuccess<SummaryModel> state) {
    return HomeScreen(
      summaryModel: state.data!,
    );
  }
}
