import 'package:app/core/components/base_stateless_widget.dart';
import 'package:app/core/utils/navigator.dart';

import '../../../main_index.dart';
import '../widgets/item_buttom_rosary.dart';

class RosaryScreen extends BaseStatelessWidget {
   RosaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kCafColor.withOpacity(0.1),
      child: Column(
        children: [
          23.ph,
          ItemButtonRosary(title: "الحمد لله",onPressed: (){pushNamed(Routes.rosaryCounterPage);},),
          23.ph,
          ItemButtonRosary(title: "لا الاه الا الله",onPressed: (){},),
          23.ph,
          ItemButtonRosary(title: "سبحان الله",onPressed: (){},)
        ],
      ),
    );
  }
}
