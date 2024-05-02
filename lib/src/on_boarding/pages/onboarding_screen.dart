
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../core/utils/helper_methods.dart';
import '../../../core/utils/navigator.dart';
import '../../main_index.dart';
import '../widgets/background_images.dart';
import '../widgets/onboarding_item.dart';

class OnBoardingScreen extends StatelessWidget {
   OnBoardingScreen({Key? key}) : super(key: key);


  StreamStateInitial<int> pageStream = StreamStateInitial();
  PageController? controller =
  PageController(initialPage: 0, viewportFraction: 1.0);
  int index = 0;

  @override
  Widget build(BuildContext context) {
    HelperMethods.setFirstTime();
    return Padding(
      padding: 20.paddingAll,
      child: Stack(
        children: [
          PageView.builder(
            controller: controller,
            reverse: true,
            itemCount: BackgroundImages.data(context).length,
            onPageChanged: (index) {
              pageStream.setData(index);
            },
            itemBuilder: (context, index) {
              return OnboardingItem(
                item: BackgroundImages.data(context)[index],
              );
            },
          ),


          floatingActionButton(context, index: index),
        ],
      ),
    );
  }

  Widget skipTextButton(BuildContext context) {
    return GestureDetector(
      onTap: () async{
        pushNamedAndRemoveUntil(Routes.navigationPages);
        await HelperMethods.setFirstTime();
      },
      child: Text(
        context.strings.skip,
        style: context.labelMedium,
      ),
    );
  }

  floatingActionButton(BuildContext context, {required int index}) {
    print('index $index');
    return Padding(
      padding: 40.paddingBottom,
      child: Stack(
        alignment: AlignmentDirectional.bottomStart,
        children: [
          FloatingActionButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(1000),
            ),
            backgroundColor: index.isOdd ? context.cardColor : context.primaryColor,
            onPressed: () {
              if (controller?.page!.toInt() == BackgroundImages.data(context).length - 1) {
                pushNamedAndRemoveUntil(Routes.intro);
                HelperMethods.setFirstTime();
              } else {
                controller?.animateToPage(controller!.page!.toInt() + 1,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut);
              }
            },
            child: Icon(
              Icons.arrow_back_ios_rounded,
              color: index.isOdd ? context.primaryColor : context.cardColor,
              size: 20,
            ),
          ),
          StreamBuilder<int>(
              initialData: 0,
              stream: pageStream.stream,
            builder: (context, snapshot) {
              return Container(
                alignment: AlignmentDirectional.bottomCenter,
                margin: 20.paddingBottom,
                child: AnimatedSmoothIndicator(
                  activeIndex: snapshot.data ?? 0,
                  count: 3,
                  textDirection: TextDirection.ltr,
                  effect: ExpandingDotsEffect(
                    dotHeight: 10,
                    dotWidth: 10,
                    dotColor: context.dividerColor,
                    activeDotColor: context.primaryColor,
                  ),
                ),
              );
            }
          ),
        ],
      ),
    );
  }
}
