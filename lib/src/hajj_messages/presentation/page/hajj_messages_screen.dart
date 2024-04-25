import 'package:app/core/components/base_stateless_widget.dart';

import '../../../main_index.dart';
import '../widget/message_item.dart';

class HajjMessagesScreen extends BaseStatelessWidget {
  HajjMessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kCafColor.withOpacity(0.1),
      child: ListView.builder(
        itemCount: 3,
        padding: 10.paddingAll,
        itemBuilder: (context, index) {
          return MessageItem(

          );
        },
      ),
    );
  }
}
