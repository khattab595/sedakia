import 'package:card_swiper/card_swiper.dart';

import '../../../../core/widgets/images/image_network.dart';
import '../../../main_index.dart';
import '../../data/models/home_data_dto.dart';

///  Created by harbey on 9/14/2023.
class SlidersHome extends BaseStatelessWidget {
  final List<SliderDto> sliders;

  SlidersHome({super.key, required this.sliders});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Swiper(
        itemCount: sliders.length,
        index: 0,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: 8.paddingBottom,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xffF2F2F2),
              ),
              margin: 5.paddingHoriz,
              child: ImageNetwork(
                margin: 5.paddingHoriz,
                image: sliders[index].image ?? '',
                width: double.infinity,
                fit: BoxFit.fill,
                radius: 5,
              ),
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
        outer: true,
        viewportFraction: 0.9,
        scale: 0.99,
        autoplay: true,
        allowImplicitScrolling: false,
      ),
    );
  }
}
