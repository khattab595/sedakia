import 'package:app/src/wallet/domain/entities/payment_method_fields.dart';

import '../../../../../../core/components/base_widget_bloc.dart';
import '../../../../../main_index.dart';
import '../../bloc/add_payment_method_bloc.dart';
import 'add_payment_method_screen.dart';


class AddPaymentMethodPage
    extends BaseBlocWidget<DataSuccess<List<PaymentMethodFields>>, AddPaymentMethodCubit> {
  AddPaymentMethodPage({Key? key}) : super(key: key);

  @override
  void loadInitialData(BuildContext context) {
    bloc.fetchCreatePaymentField();
  }

  @override
  String? title(BuildContext context) => strings.add_new_method;

  @override
  Widget buildWidget(
      BuildContext context, DataSuccess<List<PaymentMethodFields>> state) {
    return AddPaymentMethodScreen(
      paymentMethods: state.data ?? [],
    );
  }
}
