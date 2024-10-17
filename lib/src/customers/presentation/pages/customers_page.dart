import '../../../../core/components/base_widget_bloc.dart';
import '../../../main_index.dart';
import '../bloc/customers_bloc.dart';
import 'customers_screen.dart';

class CustomersPage extends BaseBlocWidget<UnInitState, CustomersBloc> {
  CustomersPage({Key? key}) : super(key: key);

  // @override
  // void loadInitialData(BuildContext context) {
  //   bloc.fetchInitialData();
  // }
  // @override
  // String? title(BuildContext context) {
  //   return strings.customers;
  // }

  @override
  Widget buildWidget(BuildContext context, UnInitState state) {
    return AppScaffold(
        appBar: AppBar(
          titleTextStyle: primaryBoldStyle,
          backgroundColor: AppColors.colorF4.withOpacity(0.3),
          title: Text(strings.customers),
        ),
        backgroundColor: AppColors.colorF4.withOpacity(0.3),
        body: CustomersScreen());
  }
}
