import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../main_index.dart';
import '../../domain/entities/splash.dart';
import '../widgets/slider_content.dart';


class IntroductionScreen extends BaseStatelessWidget {
  final List<Splash> splashData;
   IntroductionScreen({Key? key, required this.splashData}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    int pageIndex = 1;
    PageController pageController = PageController();
    List<Widget> sliderPages = [
      SliderContent(
        imgPath: AppImages.onboarding_human2,
        description: "Splash Title Splash Title Splash Title Splash  Splash Title",
      ),
      SliderContent(
        imgPath: AppImages.video,
        description: "Splash Title Splash Title Splash Title Splash  Splash Title",
      ),
      SliderContent(
        imgPath: AppImages.video,
        description: "Splash Title Splash Title Splash Title Splash  Splash Title",
      ),
    ];
    return Padding(
      padding: const EdgeInsets.all(20),
      child: StatefulBuilder(
          builder: (context, setState) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  strings.welcome_message,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: (MediaQuery.of(context).size.height) / 18,
                    fontWeight: FontWeight.bold,
                    color: AppColors.introPageTextColor,
                  ),
                ),
                Expanded(
                  child: PageView.builder(
                    reverse: true,
                   itemCount: splashData.length,
                    controller: pageController,
                    onPageChanged: (index) {
                      setState(() {
                        pageIndex = index + 1;
                      });
                    },
                    itemBuilder: (context, index) {
                      return SliderContent(
                        imgPath: splashData[index].image,
                        description: splashData[index].description,
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.introPageIconsColor,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              (pageIndex < sliderPages.length)
                                  ? pageController.nextPage(
                                  duration: const Duration(milliseconds: 250),
                                  curve: Curves.easeIn)
                                  : Navigator.pushNamed(context, Routes.loginPage);
                            });
                          },
                          icon: AppIcon(
                            icon: AppIcons.rightArrow,
                            color: AppColors.introPageIconsColor,
                          ),
                        ),
                      ),
                      SmoothPageIndicator(
                        controller: pageController,
                        count: sliderPages.length,
                        textDirection: TextDirection.ltr,
                        effect: ScrollingDotsEffect(
                          activeDotColor: AppColors.introPageIconsColor,
                          dotColor: AppColors.introPageIconsColor.withAlpha(50),
                          dotWidth: 10,
                          dotHeight: 10,
                          activeDotScale: 1.5,
                        ),
                      ),
                      (pageIndex > 1)
                          ? IconButton(
                        onPressed: () {
                          setState(() {
                            pageController.previousPage(
                                duration: const Duration(milliseconds: 250),
                                curve: Curves.easeIn);
                          });
                        },
                        icon: SvgPicture.asset(
                          AppIcons.leftArrow,
                          color: AppColors.introPageIconsColor,
                        ),
                      )
                          : Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18),
                        child: SvgPicture.asset(
                          AppIcons.leftArrow,
                          color: Colors.transparent,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            );
          }
      ),
    );
  }
}
