
import '../../../../main_index.dart';
import '../../../domain/entities/invoice.dart';

class InvoiceItem extends BaseStatelessWidget {
  final Invoice? invoice;

  InvoiceItem(
      {Key? key, this.invoice,})
      : super(key: key);

  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    isFavorite = invoice?.favorite ?? false;
    return InkWell(
      onTap:
          () {
          },
      child: Container(
        width: 150,
        clipBehavior: Clip.hardEdge,
        margin: 5.paddingHoriz,
        decoration: Decorations.baseDecorationRadius(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

          ],
        ),
      ),
    );
  }
}
