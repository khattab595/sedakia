import '../../../../core/components/base_widget_bloc.dart';
import '../../../main_index.dart';
import '../../domain/entities/Summary_model.dart';
import '../bloc/home_bloc.dart';
import 'home_screen.dart';

class HomePage extends BaseBlocWidget<DoubleDataSuccess, HomeCubit> {
  HomePage({Key? key}) : super(key: key);

  @override
  void loadInitialData(BuildContext context) {
    bloc.fetchSummary();
  }

  @override
  String? title(BuildContext context) {
    return strings.statistics;
  }

  @override
  Widget buildWidget(BuildContext context, DoubleDataSuccess state) {
    return HomeScreen(summaryModel: state.data1!, monthlyDto: state.data2);
  }
}
