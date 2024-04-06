

import '../../../../../../core/components/base_stateless_widget.dart';
import '../../../../../main_index.dart';
import '../../widgets/details_invoice_widget.dart';

class DetailsInvoicesScreen extends BaseStatelessWidget {


  DetailsInvoicesScreen(
      {Key? key,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DetailsInvoiceWidget();
  }
}
