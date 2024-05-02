import 'package:app/core/utils/navigator.dart';

import '../../../../../core/widgets/custom_title_row.dart';
import '../../../../../core/widgets/images/flip_asset_image.dart';
import '../../../../../core/widgets/images/image_network.dart';
import '../../../../../core/widgets/sliders/custom_slider_widget.dart';
import '../../../../../core/widgets/texts/texts.dart';
import '../../../../main_index.dart';
import '../../../../my_courses/data/models/my_courses_dto.dart';
import '../../../../my_courses/presentation/widgets/my_courses_item.dart';
import '../../../data/models/department_dto.dart';
import '../../../domain/entities/home.dart';
import '../../widgets/custom_department_item.dart';
import '../../widgets/custom_departments_widget.dart';
import '../../widgets/custom_latest_course_item.dart';
import '../../widgets/custom_latest_courses_widget.dart';
import '../../widgets/custom_teachers_widget.dart';
import '../../widgets/personal_informatin_widget.dart';

class HomeScreen extends BaseStatelessWidget {
  final List<DepartmentDto> departmentsList;

  HomeScreen({Key? key, required this.departmentsList}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: 16.paddingVert+20.paddingHoriz,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PersonalInformationWidget(),
               Padding(
                padding:18.paddingVert,
                child: CustomSliderWidget(image: images,isCenterPages: true,height: 180,isHasRadius: true,
                radius: 12,),
              ),
               BoldText(
                label: strings.new_mes,
                fontSize: 20,
              ),
               MyCoursesItem(myCourse:
                  MyCoursesDto(
                    percentage: 0.7,
                    name: 'الدورة التاهيلية للكيمياء للصف الرابع العلمي',
                    department:'الكيمياء' ,
                    teacher: 'عبدالله مصطفي',
                    image: courseImageTest,
                    duration: '١ ساعة ٣٢ دقيقة',
                  ),),
               BoldText(
                label: strings.departments,
                fontSize: 20,
              ),
              10.ph,
              CustomDepartmentsWidget(departmentsList: departmentsList,),
              30.ph,
              CustomTitleRow(title: strings.latest_courses, onTap: () {
                pushNamed(Routes.latestCoursesPage);
              },),
              8.ph,
              CustomLatestCoursesWidget(),
              10.ph,
              CustomTitleRow(title: strings.teachers, onTap: () {
                pushNamed(Routes.teachersPage);
              },),
              10.ph,
              CustomTeachersWidget(),
              50.ph,

            ],
          ),
        ),
      ),
    );
  }

  String courseImageTest='https://scontent.fcai20-5.fna.fbcdn.net/v/t39.30808-6/438733737_948519656830553_8918195012094984290_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=5f2048&_nc_ohc=G1JUxOIBt0EQ7kNvgEXOL8_&_nc_ht=scontent.fcai20-5.fna&oh=00_AfD2Xhzte39iBbqctJrvpdFMocbfLvqVK3p_nrtggDWIjg&oe=66370D01';
  List<String> images=[
    'https://scontent.fcai20-6.fna.fbcdn.net/v/t39.30808-6/438171287_407893252107402_5810427257132495905_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=5f2048&_nc_ohc=npQpjfuoWoIQ7kNvgE0q_Ij&_nc_ht=scontent.fcai20-6.fna&oh=00_AfAMdxbKnrSCfeMSN-GzULs7QXkN_mQp5661Z4agB5qvtg&oe=6636F57E',
    'https://scontent.fcai20-3.fna.fbcdn.net/v/t39.30808-6/440791195_953238186358700_1454712455871443919_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=5f2048&_nc_ohc=tIyzFjheU-cQ7kNvgHS6BPC&_nc_ht=scontent.fcai20-3.fna&oh=00_AfBFFOXO5X7Vmw6YMQSpi2KI8iUGv5RLylmktTGYa8q0iQ&oe=6636F6B0',
    'https://scontent.fcai20-2.fna.fbcdn.net/v/t39.30808-6/440739454_951864423162743_7561334343099904604_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=5f2048&_nc_ohc=xS-5QScwSjQQ7kNvgFW3IeD&_nc_ht=scontent.fcai20-2.fna&oh=00_AfDPmMmeVw6x0ba7qnVIXh7ALZTk_ABTvpcCGqsSuIMaXg&oe=66371E74',
    'https://scontent.fcai20-2.fna.fbcdn.net/v/t39.30808-6/438720953_949043266778192_4885540436666848933_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=5f2048&_nc_ohc=R3_d9fup2SsQ7kNvgEAWgEo&_nc_ht=scontent.fcai20-2.fna&oh=00_AfA9eWUgVUDZCVdWA746gN8kibDJezFAtpGnHe6F_tparg&oe=663706FC'
  ];
}
