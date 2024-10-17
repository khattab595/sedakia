import '../../../../core/components/base_widget_bloc.dart';
import '../../../main_index.dart';
 import '../bloc/categories_bloc.dart';
import 'categories_screen.dart';


class CategoriesPage extends BaseBlocWidget<UnInitState, CategoriesBloc> {
  CategoriesPage({Key? key}) : super(key: key);

  // @override
  // void loadInitialData(BuildContext context) {
  //   bloc.fetchInitialData();
  // }

  @override
  Widget buildWidget(
      BuildContext context,UnInitState state) {
    return CategoriesScreen(

    );
  }
}
