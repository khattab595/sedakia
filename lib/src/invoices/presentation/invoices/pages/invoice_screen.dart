import '../../../../main_index.dart';
import '../../../domain/entities/invoice.dart';
import '../widgets/invoice_item.dart';

class InvoicesScreen extends BaseStatelessWidget {
  final List<Invoice> invoices;
  final String? categoryName;
  final Function(int)? onFavorite;
  final Function(String)? onSearch;

  InvoicesScreen(
      {Key? key, required this.invoices, this.onSearch, this.categoryName, this.onFavorite})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      shrinkWrap: true,
      padding: 10.paddingAll,
      itemBuilder: (context, index) {
        return InvoiceItem(
          invoice: Invoice(),
        );
      },
    );
  }
}
