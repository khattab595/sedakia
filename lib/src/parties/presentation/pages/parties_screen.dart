
import '../../../main_index.dart';
import '../widgets/item_timer_widget.dart';

class PartiesScreen extends BaseStatelessWidget {
  PartiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        30.ph,
        ItemTimerWidget(),
        ItemTimerWidget(),
        ItemTimerWidget(),
        30.ph,

      ],
    );
  }
}
