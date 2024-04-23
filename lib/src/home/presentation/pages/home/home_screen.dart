import 'package:app/core/widgets/texts/row_texts.dart';

import '../../../../../core/widgets/shapes/rounded_shape.dart';
import '../../../../../core/widgets/texts/texts.dart';
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
      child: Container(
        color: kCafColor.withOpacity(0.1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            50.ph,
            CustomPrayerTimings(),
            22.ph,
            SizedBox(
              height: 100,
              width: MediaQuery.of(context).size.width - 1,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return CustomItem();
                  }),
            ),
            22.ph,
            HomeButtons(
              statistics: home.statistics ?? [],
            ),
          ],
        ),
      ),
    );
  }
}
