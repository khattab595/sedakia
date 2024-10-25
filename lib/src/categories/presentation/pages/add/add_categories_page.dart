import '../../../../../core/components/base_widget_bloc.dart';
import '../../../../../core/utils/navigator.dart';
import '../../../../main_index.dart';
import '../../../domain/entities/Category.dart';
import '../../../domain/entities/Data.dart';
import '../../bloc/categories_bloc.dart';
import 'add_categories_screen.dart';

class AddCategoriesPage
    extends BaseBlocWidget<DataSuccess<CategoryModel>, CategoriesBloc> {

  @override
  void loadInitialData(BuildContext context) {
    bloc.fetchCategory();
  }

  @override
  String? title(BuildContext context) {
    return strings.add_categories;
  }
  static push(BuildContext context,
      {required Function() onSuccess, CategoryData? categoryData}) async {
    final result = await Navigator.pushNamed(context, Routes.addCategoriesPage,
        arguments: categoryData);
    if (result is bool && result) {
      print('push: $result');
      onSuccess();
    }
  }

  @override
  Widget buildWidget(BuildContext context, DataSuccess<CategoryModel> state) {
    CategoryData categoryData=getArguments(context);

    return AddCategoriesScreen(
      categoryModel: state.data!,
      categoryData: categoryData,
      addCategory: (params) => bloc.addCategory(params),
      updateCategory: (params, id) => bloc.updateCategory(params, id),
    );
  }

  @override
  void onSuccessDismissed() {
   pop();
  }
}
