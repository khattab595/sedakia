
import '../../../../../core/components/base_widget_bloc.dart';
import '../../../../main_index.dart';
import '../../../domain/entities/invoice.dart';
import '../bloc/products_bloc.dart';
import 'invoice_screen.dart';

class InvoicesPage extends BaseBlocWidget<UnInitState, ProductsCubit> {
  InvoicesPage({Key? key}) : super(key: key);


  // @override
  // void loadInitialData(BuildContext context) {
  //   bloc.fetchProducts(getArguments(context) ?? 'all');
  // }

  @override
  Widget buildWidget(BuildContext context, UnInitState state) {
    return InvoicesScreen(
    //  invoices: [],
      categoryName: getArguments(context),
      onSearch: (value) {},
    );
  }

  @override
  String? title(BuildContext context) {
    return getArguments(context) ?? strings.invoices;
  }

}
