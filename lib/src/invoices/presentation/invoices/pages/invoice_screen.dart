import '../../../../../core/widgets/text-field/custom_text_field.dart';
import '../../../../../core/widgets/texts/texts.dart';
import '../../../../main_index.dart';
import '../widgets/filter_date_widget.dart';
import '../widgets/invoice_item.dart';

class InvoicesScreen extends BaseStatelessWidget {
  // final List<Invoice> invoices;
  final String? categoryName;
  final Function(int)? onFavorite;
  final Function(String)? onSearch;
  final int index;

  InvoicesScreen(
      {Key? key,
      //   required this.invoices,
      this.onSearch,
      this.categoryName,
        required this.index,
      this.onFavorite})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 3,
            padding: 10.paddingHoriz + 20.paddingBottom,
            itemBuilder: (context, index) {
              return InvoiceItem(
                  // invoice: invoices[index],
                index: this.index,
                  );
            },
          ),
        ),
      ],
    );
  }
}
