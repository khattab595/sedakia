import '../../../../../core/components/base_widget_bloc.dart';
import '../../../../../core/widgets/tabview/tabbar_widget.dart';
import '../../../../../core/widgets/text-field/custom_text_field.dart';
import '../../../../../core/widgets/texts/texts.dart';
import '../../../../main_index.dart';
import '../bloc/products_bloc.dart';
import '../widgets/filter_date_widget.dart';
import 'invoice_screen.dart';

class InvoicesPage extends BaseBlocWidget<UnInitState, ProductsCubit> {
  InvoicesPage({Key? key}) : super(key: key);

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return mainFrame(
      body: TabBarWidget(
        onTap: (id) {
          index = id;
          print('index : $index');
        },
        tabs: [
          TabItemModel(
            label: strings.qayd_invoices,
            page: Column(
              children: [
                FilterInvoices(),
                Expanded(child: buildConsumer(context)),
              ],
            ),
          ),
          TabItemModel(
            label: strings.pay_invoices,
            page: Column(
              children: [
                FilterInvoices(),
                Expanded(child: buildConsumer(context)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget buildWidget(BuildContext context, UnInitState state) {
    return InvoicesScreen(
      //  invoices: [],
      index: index,
      categoryName: getArguments(context),
      onSearch: (value) {},
    );
  }

  @override
  String? title(BuildContext context) {
    return getArguments(context) ?? strings.invoices;
  }
}
