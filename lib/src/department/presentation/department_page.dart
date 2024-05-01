import '../../../../../../core/components/base_widget_bloc.dart';

import '../../../core/resources/data_state.dart';
import '../../home/domain/entities/home.dart';
import '../../home/presentation/bloc/home_bloc.dart';
import '../../main_index.dart';
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
