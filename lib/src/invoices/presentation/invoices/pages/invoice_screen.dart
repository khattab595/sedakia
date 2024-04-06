import '../../../../../core/widgets/text-field/custom_text_field.dart';
import '../../../../main_index.dart';
import '../../../domain/entities/invoice.dart';
import '../widgets/invoice_item.dart';

class InvoicesScreen extends BaseStatelessWidget {
  // final List<Invoice> invoices;
  final String? categoryName;
  final Function(int)? onFavorite;
  final Function(String)? onSearch;

  InvoicesScreen(
      {Key? key,
      //   required this.invoices,
      this.onSearch,
      this.categoryName,
      this.onFavorite})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: CustomTextField(
                margin: 16.paddingHoriz + 10.paddingTop,
                hintText: strings.look_for_a_qayd,
                    iconPath: AppIcons.searchInvoice,
             ),
              ),
              AppIcon(
                icon: AppIcons.filter,
                padding: 16.paddingEnd + 8.paddingTop,
                size: 22,
              )
            ],
          ),
          ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 3,
            shrinkWrap: true,
            padding: 10.paddingAll,
            itemBuilder: (context, index) {
              return InvoiceItem(
                  // invoice: invoices[index],
                  );
            },
          ),
        ],
      ),
    );
  }
}
