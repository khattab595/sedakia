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
  String? title(BuildContext context) {
    // TODO: implement title
    return strings.add_categories;
  }
  @override
  Widget buildWidget(
      BuildContext context,UnInitState state) {
    return AddCategoriesScreen(
      addCategory: (params)=>bloc.addCategory(params),

    );
  }
}
