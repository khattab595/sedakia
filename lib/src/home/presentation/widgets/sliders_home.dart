
import 'package:app/core/themes/light_theme.dart';
import 'package:card_swiper/card_swiper.dart';

import '../../../../core/widgets/images/image_network.dart';
import '../../../main_index.dart';

///  Created by harbey on 9/14/2023.
class SlidersHome extends BaseStatelessWidget {
  final List<String> images;

   SlidersHome({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Swiper(
        itemCount: 5,
        index: images.length - 1,

        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: 50.paddingBottom,
            child: ImageNetwork(
              margin: 5.paddingHoriz,
              image: 'https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg',
              width: double.infinity,
              fit: BoxFit.fill,
              radius: 5,
            ),
          );
        },
        pagination: SwiperPagination(
          alignment: Alignment.bottomCenter,
          builder: DotSwiperPaginationBuilder(
            color: hintColor,
            activeColor: primaryColor,
          ),
        ),
        viewportFraction: 0.9,
        scale: 0.99,
        autoplay: true,
        allowImplicitScrolling: false,
      ),
    );
  }
}
