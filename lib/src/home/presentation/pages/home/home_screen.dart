import '../../../../main_index.dart';
import '../../../domain/entities/home.dart';
import '../../widgets/custom_prayer_timings.dart';
import '../../widgets/custome_item.dart';
import '../../widgets/home_buttons.dart';

class HomeScreen extends BaseStatelessWidget {
  final Home home;

  HomeScreen({Key? key, required this.home}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // padding: 16.paddingVert,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          50.ph,
          CustomPrayerTimings(),
          SizedBox(
            height: 130,
            child: ListView.builder(
              padding: 18.paddingStart,
              scrollDirection: Axis.horizontal,
              itemCount: 2,
              itemBuilder: (context, index) {
                return CustomItem();
              },
            ),
          ),
          HomeButtons(
            statistics: home.statistics ?? [],
          ),
        ],
      ),
    );
  }
}
