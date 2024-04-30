import 'package:app/core/utils/navigator.dart';

import '../../../../../core/widgets/custom_title_row.dart';
import '../../../../../core/widgets/images/flip_asset_image.dart';
import '../../../../../core/widgets/images/image_network.dart';
import '../../../../../core/widgets/sliders/custom_slider_widget.dart';
import '../../../../../core/widgets/texts/texts.dart';
import '../../../../main_index.dart';
import '../../../../my_courses/data/models/my_courses_dto.dart';
import '../../../../my_courses/presentation/widgets/my_courses_item.dart';
import '../../../domain/entities/home.dart';
import '../../widgets/custom_department_item.dart';
import '../../widgets/custom_departments_widget.dart';
import '../../widgets/custom_latest_course_item.dart';
import '../../widgets/custom_latest_courses_widget.dart';
import '../../widgets/custom_teacher_item.dart';
import '../../widgets/custom_teachers_widget.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/personal_informatin_widget.dart';

class TeachersScreen extends BaseStatelessWidget {
  final Home home;

  TeachersScreen({Key? key, required this.home}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:
      GridView.count(
          shrinkWrap: true,
          padding: 16.paddingHoriz,
          physics: const BouncingScrollPhysics(),
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 5,
          childAspectRatio: (1 / 1.3),
          children: List.generate(20, (index) {
            return  CustomTeacherItem(width: double.infinity,height: 250,);
          })
      )
    );
  }


}
