
import 'package:card_swiper/card_swiper.dart';

import '../../../../core/widgets/images/image_network.dart';
import '../../../main_index.dart';

///  Created by harbey on 9/14/2023.
class SlidersHome extends StatelessWidget {
  final List<String> images;

  const SlidersHome({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: Swiper(
        itemCount: images.length,
        index: images.length - 1,

        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: 30.paddingBottom,
            child: ImageNetwork(
              image: images[index],
              width: double.infinity,
              fit: BoxFit.fill,
              radius: 0,
            ),
          );
        },
        pagination: SwiperCustomPagination(
            builder: (BuildContext context, SwiperPluginConfig config) {
          return
            Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(config.itemCount, (index) => Container(
                margin: const EdgeInsetsDirectional.only(top: 120, start: 5, end: 5),
                alignment: Alignment.center,
                decoration: Decorations.kDecorationBorderRadius(
                  color: config.activeIndex == index ? context.primaryColor : context.dividerColor,
                  radius: 14,
                  borderColor: context.primaryColor,
                ),
                height: 10,
                width: 10,
              )),
            ),
          );
        }),
        viewportFraction: 1,
        scale: 0.99,
        autoplay: true,
        allowImplicitScrolling: false,
      ),
    );
  }
}
