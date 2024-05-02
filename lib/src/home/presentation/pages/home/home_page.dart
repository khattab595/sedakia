import '../../../../../core/components/base_widget_bloc.dart';
import '../../../../main_index.dart';
import '../../../data/models/department_dto.dart';
import '../../../domain/entities/home.dart';
import '../../bloc/home_bloc.dart';
import 'home_screen.dart';

class HomePage extends BaseBlocWidget<DataSuccess<List<DepartmentDto>>, HomeCubit> {
  HomePage({Key? key}) : super(key: key);

  @override
  void loadInitialData(BuildContext context) {
    bloc.fetchDepartmentsData();
    // bloc.fetchTeachersData();
    // bloc.fetchRecentlyData();
  }

  // @override
  // Widget build(BuildContext context) {
  //   return mainFrame(
  //     body: Stack(
  //       children: [
  //         Container(
  //           height: 100,
  //           width: 500,
  //           decoration:
  //               Decorations.shapeDecorationShadow(radius: 0, color: cardColor),
  //         ),
  //         buildConsumer(context),
  //       ],
  //     ),
  //   );
  // }

  @override
  Widget buildWidget(BuildContext context, DataSuccess<List<DepartmentDto>> state) {
    return HomeScreen(
      departmentsList: state.data!,
    );
  }
}
