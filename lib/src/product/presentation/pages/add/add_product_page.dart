import 'package:app/src/auth/data/models/login_dto.dart';

import '../../../../../core/components/base_widget_bloc.dart';
import '../../../../../core/utils/navigator.dart';
import '../../../../categories/domain/entities/Category.dart';
import '../../../../main_index.dart';
import '../../bloc/product_bloc.dart';
import 'add_product_screen.dart';

class AddProductPage extends BaseBlocWidget<DataSuccess<CategoryModel>, ProductBloc> {
  AddProductPage({Key? key}) : super(key: key);

  @override
  void loadInitialData(BuildContext context) {
    bloc.fetchCategory();
  }

  @override
  String? title(BuildContext context) {
    return strings.add_product;
  }

  @override
  Widget buildWidget(BuildContext context, DataSuccess<CategoryModel> state) {
    return AddProductScreen(
      categoryModel: state.data!,
      onCreate:(params)=>bloc.createProduct(params),
    );
  }
  @override
  void onSuccessDismissed() {
    Navigators.pushNamedAndRemoveUntil(Routes.productPage);
  }
}
