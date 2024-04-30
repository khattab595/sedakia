import 'package:carousel_slider/carousel_slider.dart';
import '../../../src/main_index.dart';
import '../images/custom_image.dart';

class CustomSliderWidget extends StatefulWidget {
  final List<String?> image;
  final bool? isHasRadius;
  final double? radius;
  final double? height;
  final bool? isCenterPages;
  const CustomSliderWidget({super.key, required this.image, this.isHasRadius, this.height, this.isCenterPages, this.radius, });
  @override
  State<CustomSliderWidget> createState() => _CustomSliderWidgetState();
}

class _CustomSliderWidgetState extends State<CustomSliderWidget> {
  CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: <Widget>[
       SizedBox(
         height:widget.height?? 376,
         // width: double.infinity,
         child:
         CarouselSlider(
           carouselController: carouselController,
           items: widget.image.map((e) =>
           widget.isHasRadius==true?
           SizedBox(
               width: double.infinity,
               child: CustomImage(image:e!,fit: BoxFit.cover,radius:widget.radius ??10,)):
           SizedBox(
               width: double.infinity,
               child: CustomImage(image:e!,fit: BoxFit.cover,)),).toList(),
           options: CarouselOptions(
             height:widget.height?? 376,
             aspectRatio: 16/9,
             viewportFraction: 1,
             enableInfiniteScroll: true,
             reverse: false,
             autoPlay: true,
             autoPlayAnimationDuration: const Duration(milliseconds: 800),
             autoPlayCurve: Curves.easeInOut,
             enlargeCenterPage: widget.isCenterPages ??false,
             onPageChanged: (index, reason){
               setState(() {
                 currentIndex =index;
               });
             },
             scrollDirection: Axis.horizontal,
           ),
         ),
       ),
       8.ph,
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: 16.paddingHoriz,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
              widget.image.asMap().entries.map((MapEntry<int, String?> entry) {
                return GestureDetector(
                  onTap: () => carouselController.animateToPage(entry.key),
                  child: Container(
                    width: 12.0,
                    height: 12.0,
                    margin:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: currentIndex == entry.key
                            ? context.primaryColor
                            : Colors.black.withOpacity(0.2)),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
