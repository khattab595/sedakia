import 'package:app/core/components/base_stateless_widget.dart';
import 'package:app/core/utils/navigator.dart';

import '../../../main_index.dart';
import '../widgets/programe_item.dart';

class ProgrameScreen extends BaseStatelessWidget {
  ProgrameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kCafColor.withOpacity(0.1),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 4,
        padding: 10.paddingAll,
        itemBuilder: (context, index) {
          return InkWell(
              onTap: (){
                pushNamed(Routes.detailsProgrammePage);
              },
              child: ProgrameItem());
        },
      ),
    );
  }
}
