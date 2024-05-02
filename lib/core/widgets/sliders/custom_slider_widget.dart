import 'package:carousel_slider/carousel_slider.dart';
import '../../../src/home/domain/entities/slide.dart';
import '../../../src/main_index.dart';
import '../images/custom_image.dart';
import '../images/image_network.dart';

class CustomSliderWidget extends StatelessWidget {
  final StreamStateInitial<List<Slide>?> slidesStream;
  final bool? isHasRadius;
  final double? radius;
  final double? height;
  final bool? isCenterPages;

  CustomSliderWidget({
    super.key,
    required this.slidesStream,
    this.isHasRadius,
    this.height,
    this.isCenterPages,
    this.radius,
  });

  CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 250,
      child: StreamBuilder<List<Slide>?>(
          stream: slidesStream.stream,
          builder: (context, snapshot) {
            return snapshot.data == null
                ? const Center(child: CircularProgressIndicator())
                : StatefulBuilder(builder: (context, setState) {
                    return Column(
                      children: <Widget>[
                        SizedBox(
                          height: height ?? 200,
                          // width: double.infinity,
                          child: CarouselSlider(
                            carouselController: carouselController,
                            items: snapshot.data
                                ?.map(
                                  (e) => isHasRadius == true
                                      ? SizedBox(
                                          width: double.infinity,
                                          child: CustomImage(
                                            image: e.images ?? '',
                                            fit: BoxFit.cover,
                                            radius: radius ?? 10,
                                          ))
                                      : SizedBox(
                                          width: double.infinity,
                                          child: ImageNetwork(
                                            margin: 5.paddingHoriz,
                                            image: e.images ?? '',
                                            fit: BoxFit.cover,
                                          )),
                                )
                                .toList(),
                            options: CarouselOptions(
                              height: height ?? 200,
                              aspectRatio: 16 / 9,
                              viewportFraction: 0.9,
                              enableInfiniteScroll: true,
                              reverse: false,
                              autoPlay: true,
                              autoPlayAnimationDuration:
                                  const Duration(milliseconds: 800),
                              autoPlayCurve: Curves.easeInOut,
                              enlargeCenterPage: isCenterPages ?? false,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  currentIndex = index;
                                });
                              },
                              scrollDirection: Axis.horizontal,
                            ),
                          ),
                        ),
                        8.ph,
                        // SingleChildScrollView(
                        //   scrollDirection: Axis.horizontal,
                        //   child: Padding(
                        //     padding: 16.paddingHoriz,
                        //     child: Row(
                        //       mainAxisAlignment: MainAxisAlignment.center,
                        //       children:
                        //       snapshot.data.asMap().entries.map((MapEntry<int, String?> entry) {
                        //         return GestureDetector(
                        //           onTap: () => carouselController.animateToPage(entry.key),
                        //           child: Container(
                        //             width: 12.0,
                        //             height: 12.0,
                        //             margin:
                        //             const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                        //             decoration: BoxDecoration(
                        //                 shape: BoxShape.circle,
                        //                 color: currentIndex == entry.key
                        //                     ? context.primaryColor
                        //                     : Colors.black.withOpacity(0.2)),
                        //           ),
                        //         );
                        //       }).toList(),
                        //     ),
                        //   ),
                        // ),
                      ],
                    );
                  });
          }),
    );
  }
}
