import 'package:app/core/components/base_stateless_widget.dart';

import '../../../main_index.dart';
import '../widgets/healthy_item.dart';

class HealthyScreen extends BaseStatelessWidget {
   HealthyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      shrinkWrap: true,
      itemCount: 8,
      padding: 10.paddingAll,
      itemBuilder: (context, index) {
        return HealthyItem();
      },
    );
  }
}
