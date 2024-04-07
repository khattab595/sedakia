import '../../../../main_index.dart';
import '../../../domain/entities/home.dart';
import '../../widgets/contact_us.dart';
import '../../widgets/home_buttons.dart';
import '../../widgets/sliders_home.dart';

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
          SlidersHome(
            images: home.slider ?? [],
          ),
          14.ph,
          HomeButtons(
            statistics: home.statistics ?? [],
          ),
          20.ph,
          ContactUs(statistics: []),
        ],
      ),
    );
  }
}
