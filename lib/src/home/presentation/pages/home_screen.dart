import 'package:app/core/utils/helper_methods.dart';
import 'package:app/core/utils/navigator.dart';
import 'package:app/core/widgets/texts/primary_texts.dart';

import '../../../../core/widgets/texts/row_texts.dart';
import '../../../main_index.dart';
import '../../../request_log/domain/entities/course.dart';
import '../widgets/attachment_item.dart';
import '../widgets/project_item.dart';
import '../widgets/sliders_home.dart';

class HomeScreen extends BaseStatelessWidget {
  // final StreamStateInitial<Course?> currentProjectStream;
  // final StreamStateInitial<List<Course>?> projectsStream;
  //
  // HomeScreen({
  //   super.key,
  //   required this.currentProjectStream,
  //   required this.projectsStream,
  // });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: 15.paddingAll + 20.paddingTop,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            headerHome(),
            30.ph,
            SlidersHome(),
            20.ph,
            SemiBoldPrimaryText(
              label: strings.current_project,
              fontSize: 19,
            ),
            10.ph,
            ProjectItem(),
            20.ph,
           //  SemiBoldPrimaryText(
           //    label: strings.attachments,
           //    fontSize: 19,
           //  ),
           // 10.ph,
           // AttachmentItem(),

            // SemiBoldPrimaryText(
            //   label: strings.past_project,
            //   fontSize: 19,
            // ),
            // Column(
            //   children: [
            //     10.ph,
            //     Container(
            //       decoration: Decorations.kDecorationBorderRadius(),
            //       // width: context.width,
            //       padding: 10.paddingAll,
            //       margin: 10.paddingBottom,
            //       child: Column(
            //         mainAxisAlignment: MainAxisAlignment.start,
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           RowTexts(
            //             value: "#879654",
            //             title: "مشروع هايبر بندة",
            //             titleStyle: blackMediumStyle.copyWith(fontSize: 16),
            //             valueStyle:
            //                 blackRegularStyle.copyWith(color: greyColor),
            //           ),
            //           7.ph,
            //           InkWell(
            //             onTap: () {
            //               print("open map");
            //               HelperMethods.launchURL(
            //                   'https://maps.app.goo.gl/DZPX2VFKKSaJkDrr9');
            //             },
            //             child: Row(
            //               children: [
            //                 const Icon(
            //                   Icons.location_on_outlined,
            //                   color: AppColors.blueColorff,
            //                   size: 17,
            //                 ),
            //                 10.pw,
            //                 Expanded(
            //                   child: Row(
            //                     children: [
            //                       Expanded(
            //                           child: PrimaryRegularText(
            //                         label: "شارع الرياض, حي الروضة, جدة",
            //                         fontSize: 14,
            //                         labelColor: blueColorOff,
            //                       )),
            //                       const Icon(
            //                         Icons.arrow_forward_ios,
            //                         color: AppColors.greyColorB1,
            //                         size: 16,
            //                       )
            //                     ],
            //                   ),
            //                 ),
            //               ],
            //             ),
            //           ),
            //           7.ph,
            //           Row(
            //             children: [
            //               const AppIcon(
            //                 icon: AppIcons.calendar,
            //                 size: 16,
            //               ),
            //               10.pw,
            //               PrimaryRegularText(
            //                 label: "23 مارس 2024",
            //                 fontSize: 12,
            //                 labelColor: greyColor,
            //               )
            //             ],
            //           ),
            //         ],
            //       ),
            //     ),
            //     Container(
            //       decoration: Decorations.kDecorationBorderRadius(),
            //       padding: 10.paddingAll,
            //       margin: 10.paddingBottom,
            //       child: Column(
            //         mainAxisAlignment: MainAxisAlignment.start,
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           RowTexts(
            //             value: "#149632",
            //             title: "مشروع فورمال 1",
            //             titleStyle: blackMediumStyle.copyWith(fontSize: 16),
            //             valueStyle:
            //                 blackRegularStyle.copyWith(color: greyColor),
            //           ),
            //           7.ph,
            //           InkWell(
            //             onTap: () {
            //               print("open map");
            //               HelperMethods.launchURL(
            //                   'https://maps.app.goo.gl/DZPX2VFKKSaJkDrr9');
            //             },
            //             child: Row(
            //               children: [
            //                 const Icon(
            //                   Icons.location_on_outlined,
            //                   color: AppColors.blueColorff,
            //                   size: 17,
            //                 ),
            //                 10.pw,
            //                 Expanded(
            //                   child: Row(
            //                     children: [
            //                       Expanded(
            //                           child: PrimaryRegularText(
            //                         label: "شارع الملك  سلمان، حي الروضة، جدة",
            //                         fontSize: 14,
            //                         labelColor: blueColorOff,
            //                       )),
            //                       const Icon(
            //                         Icons.arrow_forward_ios,
            //                         color: AppColors.greyColorB1,
            //                         size: 16,
            //                       )
            //                     ],
            //                   ),
            //                 ),
            //               ],
            //             ),
            //           ),
            //           7.ph,
            //           Row(
            //             children: [
            //               const AppIcon(
            //                 icon: AppIcons.calendar,
            //                 size: 16,
            //               ),
            //               10.pw,
            //               PrimaryRegularText(
            //                 label: "5 فبراير 2024",
            //                 fontSize: 12,
            //                 labelColor: greyColor,
            //               )
            //             ],
            //           ),
            //         ],
            //       ),
            //     ),
            //     Container(
            //       decoration: Decorations.kDecorationBorderRadius(),
            //       // width: context.width,
            //       padding: 10.paddingAll,
            //       margin: 10.paddingBottom,
            //       child: Column(
            //         mainAxisAlignment: MainAxisAlignment.start,
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           RowTexts(
            //             value: "#741258",
            //             title: "مشروع لولو هايبر ماركت",
            //             titleStyle: blackMediumStyle.copyWith(fontSize: 16),
            //             valueStyle:
            //                 blackRegularStyle.copyWith(color: greyColor),
            //           ),
            //           7.ph,
            //           InkWell(
            //             onTap: () {
            //               print("open map");
            //               HelperMethods.launchURL(
            //                   'https://maps.app.goo.gl/DZPX2VFKKSaJkDrr9');
            //             },
            //             child: Row(
            //               children: [
            //                 const Icon(
            //                   Icons.location_on_outlined,
            //                   color: AppColors.blueColorff,
            //                   size: 17,
            //                 ),
            //                 10.pw,
            //                 Expanded(
            //                   child: Row(
            //                     children: [
            //                       Expanded(
            //                           child: PrimaryRegularText(
            //                         label: "شارع حمد الجاسر, حي الروضة, جدة",
            //                         fontSize: 14,
            //                         labelColor: blueColorOff,
            //                       )),
            //                       const Icon(
            //                         Icons.arrow_forward_ios,
            //                         color: AppColors.greyColorB1,
            //                         size: 16,
            //                       )
            //                     ],
            //                   ),
            //                 ),
            //               ],
            //             ),
            //           ),
            //           7.ph,
            //           Row(
            //             children: [
            //               const AppIcon(
            //                 icon: AppIcons.calendar,
            //                 size: 16,
            //               ),
            //               10.pw,
            //               PrimaryRegularText(
            //                 label: "1 يناير 2024",
            //                 fontSize: 12,
            //                 labelColor: greyColor,
            //               )
            //             ],
            //           ),
            //         ],
            //       ),
            //     ),
            //   ],
            // )
            // Expanded(
            //     child: ListView.builder(
            //   itemCount: 10,
            //   padding: 10.paddingTop,
            //
            //   itemBuilder: (context, index) {
            //     return ProjectItem();
            //   },
            // ))
          ],
        ),
      ),
    );
  }

  headerHome() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SemiBoldPrimaryText(
              label: "محمد القحطاني",
              fontSize: 21,
            ),
            5.ph,
            Container(
              decoration: Decorations.baseDecorationRadius(
                  color: const Color(0xffE7FFEE), radius: 6),
              padding: 8.paddingAll,
              child: Text(
                strings.active,
                style: primaryRegularStyle.copyWith(fontSize: 15),
              ),
            )
          ],
        ),
        const Spacer(),
        InkWell(
            onTap: () {
              pushNamed(Routes.notifications);
            },
            child: const AppIcon(
              icon: AppIcons.notification,
              size: 32,
            )),
        10.pw,
        InkWell(
            onTap: () {
              pushNamed(Routes.profile);
            },
            child: const AppIcon(
              icon: AppIcons.avatar,
              size: 40,
            )),
      ],
    );
  }
}
