import '../../../../main_index.dart';
import '../../../../invoices/presentation/product/widgets/products_list_title.dart';
import '../../../domain/entities/home.dart';
import '../../widgets/contact_us.dart';
import '../../widgets/home_header.dart';
import '../../widgets/sliders_home.dart';

class HomeScreen extends BaseStatelessWidget {
  final Home home;
  final Function(int) onFavorite;

  HomeScreen({Key? key, required this.home, required this.onFavorite}) : super(key: key);

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
          HomeHeader(
            statistics: home.statistics ?? [],
          ),
          20.ph,
          ContactUs(statistics: []),
        ],
      ),
    );
  }
}
