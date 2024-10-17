import 'package:app/src/product/presentation/pages/view/product_screen.dart';

import '../../../../../core/components/base_widget_bloc.dart';
import '../../../../main_index.dart';
 import '../../bloc/product_bloc.dart';


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
