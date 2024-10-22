import '../../../../../core/components/base_widget_bloc.dart';
import '../../../../main_index.dart';
 import '../../../domain/entities/Category.dart';
import '../../bloc/categories_bloc.dart';
import 'add_categories_screen.dart';


class AddCategoriesPage extends BaseBlocWidget<DataSuccess<CategoryModel>, CategoriesBloc> {
  AddCategoriesPage({Key? key}) : super(key: key);

  @override
  void loadInitialData(BuildContext context) {
    bloc.fetchGetData();
  }

  @override
  String? title(BuildContext context) {
    return strings.add_categories;
  }
  @override
  Widget buildWidget(
      BuildContext context,DataSuccess<CategoryModel> state) {
    return AddCategoriesScreen(
      categoryStreamData: bloc.categoryStreamData,
      addCategory: (params)=>bloc.addCategory(params),
      onGetCategory: bloc.getListCategory(),

    );
  }
}
