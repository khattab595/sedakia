import 'package:app/src/course%20_details/presentaion/widget/custom_details_widget.dart';
import 'package:app/src/course%20_details/presentaion/widget/custom_lessons_widget.dart';
import '../../../../core/widgets/button_sheet/custom_bottom_sheet.dart';
import '../../../../core/widgets/images/image_network.dart';
import '../../../../core/widgets/tabview/tabbar_widget.dart';
import '../../../../core/widgets/texts/texts.dart';
import '../../../main_index.dart';
import '../../domin/entities/course_details.dart';

class CourseDetailsScreen extends BaseStatelessWidget {
  final CourseDetails courseDetails;
  final Function({required int courseId,required String courseCode})? subscribeCourse;
  GlobalKey<FormState> formKeyButtonSheet=GlobalKey<FormState>();
  TextEditingController buttonSheetController=TextEditingController();
  CourseDetailsScreen( {Key? key, required this.courseDetails,this.subscribeCourse,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:
        Padding(
          padding: 20.paddingHoriz,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  height:200,
                  width: double.infinity,
                  child:
                  ImageNetwork(image: courseDetails.image!,radius: 12,)),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  8.ph,
                   MediumText(
                    label:courseDetails.department!,
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
              Expanded(
                child: TabBarWidget(tabs: [
                  TabItemModel(label: strings.details, page: CustomDetailsWidget(courseDetails: courseDetails,)),
                  TabItemModel(label: strings.lessons, page: CustomLessonsWidget(courseDetails: courseDetails,)),

                ]),
              ),
              10.ph,
              PrimaryButton(
                title: strings.subscription,
                onPressed: (){
                  showModalBottomSheet(
                    backgroundColor:Colors.white,
                    context: context,
                    isScrollControlled: true,
                    builder: (context) =>   CustomBottomSheet(
                      onPressed:onPressed, formKeyButtonSheet: formKeyButtonSheet,
                      buttonSheetController: buttonSheetController,),
                  );

                },
              ),
            ],
          ),
        )
    );
  }
  onPressed() async {
    if(formKeyButtonSheet.currentState!.validate()){
      subscribeCourse!(courseId:courseDetails.id! ,courseCode:buttonSheetController.text );
    }
  }

}
