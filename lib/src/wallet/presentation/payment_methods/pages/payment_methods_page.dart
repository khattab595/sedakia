import 'package:app/core/utils/navigator.dart';
import 'package:app/src/wallet/presentation/payment_methods/pages/payment_methods_screen.dart';

import '../../../../../core/components/base_widget_bloc.dart';
import '../../../../../core/widgets/switch/custom_switch.dart';
import '../../../../../core/widgets/text-field/text_field_border.dart';
import '../../../../main_index.dart';
import '../../../domain/entities/payment_method.dart';
import '../bloc/payment_methods_bloc.dart';
import '../widgets/payment_methods_header.dart';

class PaymentMethodsPage
    extends BaseBlocWidget<DataSuccess<List<PaymentMethod>>, PaymentMethodsCubit> {
  PaymentMethodsPage({Key? key}) : super(key: key);

  @override
  void loadInitialData(BuildContext context) {
    bloc.fetchPaymentMethods();
  }

  @override
  Widget build(BuildContext context) {
    return mainFrame(
        floatingActionButton: FloatingActionButton(
          onPressed: () async{
            final isRefresh = await Navigators.pushNamed(Routes.addPaymentMethodPage);
            if(isRefresh is bool && isRefresh){
              bloc.fetchPaymentMethods();
            }
          },
          child: const Icon(Icons.add, color: Colors.white, size: 30),
        ),
      body: Column(
        children: [
          const PaymentMethodsHeader(),
          Expanded(
            child: buildConsumer(context),
          ),
        ],
      )
    );
  }

  @override
  Widget buildWidget(
      BuildContext context, DataSuccess<List<PaymentMethod>> state) {
    return PaymentMethodsScreen(
      paymentMethods: state.data ?? [],
    );
  }

  showAddMethodDialog(BuildContext context, PaymentMethodsCubit bloc) {
    final _formKey = GlobalKey<FormState>();
    TextEditingController _nameController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(strings.add_new_method),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: 20.paddingStart + 5.paddingBottom,
                child: Text(
                  strings.add_new_method,
                  style: context.bodyMedium,
                ),
              ),
              TextFieldBorder(
                hintText: strings.name,
                controller: _nameController,
              ),
              // DropDownFieldStream(
              //   hint: strings.method,
              //   stream: bloc.paymentMethodsStream,
              //   onChanged: (s) {},
              // ),
              CustomSwitch(
                title: strings.set_as_default,
                value: false,
                onToggle: (value) {},
              ),
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: PrimaryButton(
                  height: 25,
                  width: 60,
                  margin: 20.paddingEnd,
                  style: context.labelMedium.copyWith(fontSize: 12),
                  title: context.strings.save,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
