import '../../../../core/components/base_widget_bloc.dart';
import '../../../main_index.dart';
 import '../bloc/product_bloc.dart';
import 'product_screen.dart';


class ProductPage extends BaseBlocWidget<UnInitState, ProductBloc> {
  ProductPage({Key? key}) : super(key: key);

  // @override
  // void loadInitialData(BuildContext context) {
  //   bloc.fetchInitialData();
  // }

  @override
  Widget buildWidget(
      BuildContext context,UnInitState state) {
    return ProductScreen(

    );
  }
}
