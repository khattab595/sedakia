import 'package:app/core/components/base_stateless_widget.dart';
import '../../../main_index.dart';
import '../widgets/reference_item.dart';

class ReferenceScreen extends BaseStatelessWidget {
   ReferenceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kCafColor.withOpacity(0.1),
      child: ListView.builder(
        itemCount: 3,
        padding:10.paddingAll,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return ReferenceItem();
        },
      ),
    );
  }
}
