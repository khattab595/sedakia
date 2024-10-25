import 'package:app/src/auth/data/models/login_dto.dart';

import '../../../../../core/components/base_widget_bloc.dart';
import '../../../../../core/utils/navigator.dart';
import '../../../../categories/domain/entities/Category.dart';
import '../../../../main_index.dart';
import '../../../data/models/product_dto.dart';
import '../../bloc/product_bloc.dart';
import 'add_product_screen.dart';

class AddProductPage
    extends BaseBlocWidget<DataSuccess<CategoryModel>, ProductBloc> {

  @override
  void loadInitialData(BuildContext context) {
    bloc.fetchCategory();
  }

  @override
  String? title(BuildContext context) {
    return strings.add_product;
  }

  static push(BuildContext context,
      {required Function() onSuccess, ProductData? productData}) async {
    final result = await Navigator.pushNamed(context, Routes.addProductPage,
        arguments: productData);
    if (result is bool && result) {
      print('push: $result');
      onSuccess();
    }
  }

  @override
  Widget buildWidget(BuildContext context, DataSuccess<CategoryModel> state) {
    ProductData? productData=getArguments(context);
    return AddProductScreen(
      categoryModel: state.data!,
      productData: productData,
      onCreate: (params) => bloc.createProduct(params),
      onUpdate: (params, id) => bloc.updateProduct(params, id),
    );
  }

  @override
  void onSuccessDismissed() {
    pop();
  }
}
