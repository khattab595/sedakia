import 'package:app/core/components/base_stateless_widget.dart';

import '../../../main_index.dart';
import '../../../rosary/presentation/widgets/item_rosary.dart';

class QuranScreen extends BaseStatelessWidget {
  QuranScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: kCafColor.withOpacity(0.1),
        child: Column(
          children: [
            ItemRosary(text: "بسم آلُلُہ آلُرٍحٍمن آلُرٍحٍيَم",fontSize: 18,),
            Image.asset(AppImages.test,fit: BoxFit.cover,),
          ],
        ));
  }
}
