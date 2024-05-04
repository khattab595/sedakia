import 'package:app/core/widgets/texts/hint_texts.dart';

import '../../../../../core/widgets/button_sheet/custom_bottom_sheet.dart';
import '../../../../../core/widgets/images/image_network.dart';
import '../../../../../core/widgets/tabview/tabbar_widget.dart';
import '../../../../../core/widgets/texts/texts.dart';
import '../../../../main_index.dart';
import '../../../data/models/course_subscription_params.dart';
import '../../../domain/entities/course_details.dart';
import '../widgets/custom_details_widget.dart';
import '../widgets/custom_lessons_widget.dart';

class CourseDetailsScreen extends BaseStatelessWidget {
  final CourseDetails courseDetails;
  final Function(CourseSubscriptionParams)? subscribeCourse;
  GlobalKey<FormState> formKeyButtonSheet = GlobalKey<FormState>();
  TextEditingController buttonSheetController = TextEditingController();

  CourseDetailsScreen({
    Key? key,
    required this.courseDetails,
    this.subscribeCourse,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: 16.paddingAll,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              height: 180,
              width: double.infinity,
              child: ImageNetwork(
                image: courseDetails.image!,
                radius: 12,
              )),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              8.ph,
              HintMediumText(
                label: courseDetails.department!,
                fontSize: 14,
              ),
              4.ph,
              BoldText(
                fontSize: 20,
                textAlign: TextAlign.start,
                label: courseDetails.name!,
              ),
            ],
          ),
          Flexible(
            child: TabBarWidget(tabs: [
              TabItemModel(
                  label: strings.details,
                  page: CustomDetailsWidget(
                    courseDetails: courseDetails,
                  )),
              TabItemModel(
                label: strings.lessons,
                page: CustomLessonsWidget(
                  subjects: courseDetails.subjects ?? [],
                ),
              ),
            ]),
          ),
          10.ph,
          PrimaryButton(
            title: strings.subscription,
            onPressed: () {
              showModalBottomSheet(
                backgroundColor: Colors.white,
                context: context,
                isScrollControlled: true,
                builder: (context) => CustomBottomSheet(
                  onPressed: onPressed,
                  formKeyButtonSheet: formKeyButtonSheet,
                  buttonSheetController: buttonSheetController,
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  onPressed() async {
    if (formKeyButtonSheet.currentState!.validate()) {
      subscribeCourse!(CourseSubscriptionParams(
        courseId: courseDetails.id!,
        courseCode: buttonSheetController.text,
      ));
    }
  }
}
