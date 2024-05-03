import 'package:app/core/utils/navigator.dart';
import '../../../../../core/widgets/custom_title_row.dart';
import '../../../../../core/widgets/sliders/custom_slider_widget.dart';
import '../../../../../core/widgets/texts/texts.dart';
import '../../../../main_index.dart';
import '../../../../my_courses/domain/entities/course.dart';
import '../../../domain/entities/department.dart';
import '../../../domain/entities/slide.dart';
import '../../../domain/entities/teacher.dart';
import '../../widgets/custom_departments_widget.dart';
import '../../widgets/custom_latest_courses_widget.dart';
import '../../widgets/custom_teachers_widget.dart';
import '../../widgets/personal_informatin_widget.dart';
import '../../widgets/recently_course.dart';

class HomeScreen extends BaseStatelessWidget {
  final StreamStateInitial<List<Slide>?> slidesStream;
  final StreamStateInitial<Course?> recentlyStream;
  final StreamStateInitial<List<Department>?> departmentsStream;
  final StreamStateInitial<List<Course>?> recentlyCoursesStream;
  final StreamStateInitial<List<Teacher>?> teachersStream;

  HomeScreen({super.key,
    required this.slidesStream,
    required this.recentlyStream,
    required this.departmentsStream,
    required this.recentlyCoursesStream,
    required this.teachersStream,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PersonalInformationWidget(),
            Padding(
              padding: 10.paddingVert,
              child: CustomSliderWidget(
                slidesStream: slidesStream,
              ),
            ),
            Padding(
              padding: 10.paddingStart,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RecentlyCourse(
                    padding: 5.paddingTop+30.paddingBottom+22.paddingEnd,
                    recentlyCourseStream: recentlyStream,
                  ),
                  BoldText(
                    label: strings.departments,
                    fontSize: 20,
                  ),
                  4.ph,
                  CustomDepartmentsWidget(
                    departmentsStream: departmentsStream,
                  ),
                  CustomTitleRow(
                    title: strings.latest_courses,
                    onTap: () {
                      pushNamed(Routes.latestCoursesPage,
                          arguments: recentlyCoursesStream.data);
                    },
                  ),
                  8.ph,
                  CustomLatestCoursesWidget(
                    recentlyCoursesStream: recentlyCoursesStream,
                  ),
                  30.ph,
                  CustomTitleRow(
                    title: strings.teachers,
                    onTap: () {
                      pushNamed(Routes.teachersPage,
                          arguments: teachersStream.data);
                    },
                  ),
                  4.ph,
                  CustomTeachersWidget(
                    teachersStream: teachersStream,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
