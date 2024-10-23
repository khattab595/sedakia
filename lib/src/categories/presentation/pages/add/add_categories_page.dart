import '../../../../../core/components/base_widget_bloc.dart';
import '../../../../../core/utils/navigator.dart';
import '../../../../main_index.dart';
import '../../../domain/entities/Category.dart';
import '../../../domain/entities/Data.dart';
import '../../bloc/categories_bloc.dart';
import 'add_categories_screen.dart';

class AddCategoriesPage
    extends BaseBlocWidget<DataSuccess<CategoryModel>, CategoriesBloc> {
  AddCategoriesPage({Key? key,this.data}) : super(key: key);
  CategoryData ?data;
  @override
  void loadInitialData(BuildContext context) {
    bloc.fetchCategory();
  }

  @override
  String? title(BuildContext context) {
    return strings.add_categories;
  }

  @override
  Widget buildWidget(BuildContext context, DataSuccess<CategoryModel> state) {
    return AddCategoriesScreen(
      categoryModel: state.data!,
     categoryData: data,
      addCategory: (params) => bloc.addCategory(params),
      updateCategory: (params,  id) =>
          bloc.updateCategory( params, id),
    );
  }

  @override
  void onSuccessDismissed() {
    Navigators.pushNamedAndRemoveUntil(Routes.categoriesPage);
  }
}
