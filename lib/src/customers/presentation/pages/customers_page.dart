import '../../../../core/components/base_widget_bloc.dart';
import '../../../../core/widgets/text-field/custom_text_field.dart';
import '../../../main_index.dart';
import '../../data/models/customer_dto.dart';
import '../bloc/customers_bloc.dart';
import 'customers_screen.dart';

class CustomersPage extends BaseBlocWidget<DataSuccess<List<CustomerDto>>, CustomersBloc> {
  CustomersPage({Key? key}) : super(key: key);

  @override
  void loadInitialData(BuildContext context) {
    bloc.fetchCustomer();
  }
  @override
  String? title(BuildContext context) {
    return strings.customers;
  }
  @override
  Widget build(BuildContext context) {

    return  mainFrame(
      body: Column(
        children: [
          Padding(
            padding: 15.paddingHoriz+10.paddingTop,
            child: CustomTextField(
              hintText: strings.search,
              minHeight: 45,
              validator: (p0) => null,
            ),
          ),
          Expanded(child: buildConsumer(context)),
        ],
      ),
    );
  }

  @override
  Widget buildWidget(BuildContext context, DataSuccess<List<CustomerDto>> state) {
    return  CustomersScreen(
      data: state.data!,
    );
  }
}
