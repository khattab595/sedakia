import 'package:app/core/components/base_stateless_widget.dart';
import '../../../../main_index.dart';
import '../../widgets/counter.dart';
import '../../widgets/item_rosary.dart';

class RosaryCounterScreen extends BaseStatelessWidget {
  RosaryCounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ItemRosary(text: "الحمد لله"),
        26.ph,
        Counter(),
      ],
    );
  }
}
