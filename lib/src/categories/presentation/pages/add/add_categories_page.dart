import '../../../../../core/components/base_widget_bloc.dart';
import '../../../../main_index.dart';
 import '../../bloc/categories_bloc.dart';
import 'add_categories_screen.dart';


class AddCategoriesPage extends BaseBlocWidget<UnInitState, CategoriesBloc> {
  AddCategoriesPage({Key? key}) : super(key: key);

  // @override
  // void loadInitialData(BuildContext context) {
  //   bloc.fetchInitialData();
  // }

  @override
  Widget buildWidget(
      BuildContext context,UnInitState state) {
    return AddCategoriesScreen(

    );
  }
}
