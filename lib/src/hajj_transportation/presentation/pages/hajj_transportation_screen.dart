import 'package:app/core/components/base_stateless_widget.dart';

import '../../../main_index.dart';
import '../widgets/hajj_transportation_item.dart';

class HajjTransportationPageScreen extends BaseStatelessWidget {
   HajjTransportationPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kCafColor.withOpacity(0.1),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 4,
        padding: 10.paddingAll,
        itemBuilder: (context, index) {
          return HajjTransportationItem();
        },
      ),
    );
  }
}
