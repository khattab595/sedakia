import 'package:app/src/course%20_details/presentaion/widget/custom_details_widget.dart';
import 'package:app/src/course%20_details/presentaion/widget/custom_lessons_widget.dart';
import '../../../core/widgets/images/image_network.dart';
import '../../../core/widgets/tabview/tabbar_widget.dart';
import '../../../core/widgets/texts/texts.dart';
import '../../home/domain/entities/home.dart';
import '../../main_index.dart';

class CourseDetailsScreen extends BaseStatelessWidget {
  final Home home;

  CourseDetailsScreen({Key? key, required this.home}) : super(key: key);

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
                  ImageNetwork(image: courseImageTest,radius: 12,)),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  15.ph,
                  const MediumText(
                    label:'الكيمياء',
                    fontSize: 14,
                  ),
                  5.ph,
                  const BoldText(
                    fontSize: 20,
                    textAlign: TextAlign.start,
                    label: 'الدورة التاهيلية للكيمياء للصف الرابع العلمي',
                  ),
                ],
              ),
              Expanded(
                child: TabBarWidget(tabs: [
                  TabItemModel(label: strings.details, page: CustomDetailsWidget()),
                  TabItemModel(label: strings.lessons, page: CustomLessonsWidget()),

                ]),
              ),
            ],
          ),
        )
    );
  }
  String courseImageTest='https://scontent.fcai20-5.fna.fbcdn.net/v/t39.30808-6/438733737_948519656830553_8918195012094984290_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=5f2048&_nc_ohc=G1JUxOIBt0EQ7kNvgEXOL8_&_nc_ht=scontent.fcai20-5.fna&oh=00_AfD2Xhzte39iBbqctJrvpdFMocbfLvqVK3p_nrtggDWIjg&oe=66370D01';
}
