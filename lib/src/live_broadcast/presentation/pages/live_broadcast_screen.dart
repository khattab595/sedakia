
import '../../../../core/utils/navigator.dart';
import '../../../main_index.dart';
import '../widgets/live_broadcast_item.dart';

class LiveBroadcastScreen extends BaseStatelessWidget {
   LiveBroadcastScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 3,
      padding: 10.paddingAll,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return InkWell(
            onTap: (){
              pushNamed(Routes.detailsLiveBroadcastPage);
            },
            child: LiveBraodcastItem());
      },
    );
  }
}
