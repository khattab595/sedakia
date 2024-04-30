import '../../../../../core/components/base_widget_bloc.dart';
import '../../../../main_index.dart';
import '../../../domain/entities/home.dart';
import '../../bloc/home_bloc.dart';
import 'department_screen.dart';

class DepartmentPage extends BaseBlocWidget<DataSuccess<Home>, HomeCubit> {
  DepartmentPage({Key? key}) : super(key: key);

  @override
  void loadInitialData(BuildContext context) {
    bloc.fetchHomeData();
  }


  @override
  Widget buildWidget(BuildContext context, DataSuccess<Home> state) {
    return DepartmentScreen(
      home: state.data!,
    );
  }
  @override
  String? title(BuildContext context) {
    return strings.chemistry;
  }
}
