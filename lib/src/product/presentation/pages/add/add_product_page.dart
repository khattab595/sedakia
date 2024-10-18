import '../../../../../core/components/base_widget_bloc.dart';
import '../../../../main_index.dart';
import '../../bloc/product_bloc.dart';
import 'add_product_screen.dart';

class AddProductPage extends BaseBlocWidget<UnInitState, ProductBloc> {
  AddProductPage({Key? key}) : super(key: key);

  // @override
  // void loadInitialData(BuildContext context) {
  //   bloc.fetchInitialData();
  // }

  @override
  String? title(BuildContext context) {
    // TODO: implement title
    return strings.add_product;
  }

  @override
  Widget buildWidget(BuildContext context, UnInitState state) {
    return AddProductScreen();
  }
}
