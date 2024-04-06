
import '../../../../../../core/components/base_widget_bloc.dart';
import '../../../../../../core/resources/data_state.dart';
import '../../../../../main_index.dart';

import '../../bloc/products_bloc.dart';
import 'details_invoice_screen.dart';


class DetailsInvoicesPage extends BaseBlocWidget<UnInitState, ProductsCubit> {
  DetailsInvoicesPage({Key? key}) : super(key: key);


  // @override
  // void loadInitialData(BuildContext context) {
  //   bloc.fetchProducts(getArguments(context) ?? 'all');
  // }

  @override
  Widget buildWidget(BuildContext context, UnInitState state) {
    return DetailsInvoicesScreen(
    );
  }

  @override
  String? title(BuildContext context) {
    return getArguments(context) ?? strings.bill;
  }

}
