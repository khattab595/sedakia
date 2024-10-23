import '../../../../../core/components/base_widget_bloc.dart';
import '../../../../../core/utils/navigator.dart';
import '../../../../../core/widgets/texts/primary_texts.dart';
import '../../../../main_index.dart';
import '../../../domain/entities/Category.dart';
import '../../bloc/categories_bloc.dart';
import '../add/add_categories_page.dart';
import 'categories_screen.dart';

class CategoriesPage
    extends BaseBlocWidget<DataSuccess<CategoryModel>, CategoriesBloc> {
  CategoriesPage({Key? key}) : super(key: key);

  @override
  void loadInitialData(BuildContext context) {
    bloc.fetchCategory();
  }

  @override
  Widget buildWidget(BuildContext context, DataSuccess<CategoryModel> state) {
    return AppScaffold(
      title: strings.categories,
      actions: [
        6.pw,
        InkWell(
            onTap: () {
              push(AddCategoriesPage());
            },
            child: Container(
              alignment: Alignment.center,
              width: 95,
              height: 35,
              decoration: Decorations.kDecorationBorderRadius(
                  radius: 7, color: primaryColor),
              child: PrimaryRegularText(
                label: strings.add_categories,
                fontSize: 14,
                labelColor: whiteTextColor,
                textAlign: TextAlign.center,
              ),
            )),
        6.pw,
      ],
      body: CategoriesScreen(
        data: state.data!,
        onDelete: (id) => bloc.deleteCategory(id),
      ),
    );
  }

  @override
  void onSuccessDismissed() {
    Navigators.pushNamedAndRemoveUntil(Routes.categoriesPage);
  }
}
