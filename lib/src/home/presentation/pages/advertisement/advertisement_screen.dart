import 'package:app/core/utils/navigator.dart';
import '../../../../../core/widgets/custom_title_row.dart';
import '../../../../../core/widgets/images/image_network.dart';
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

class  AdvertisementScreen extends BaseStatelessWidget {
  final Slide slide;
  AdvertisementScreen( {super.key,required this.slide,});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: 20.paddingHoriz,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              12.ph,
              Center(
                child: ImageNetwork(
                  height: 182,
                  width: double.infinity,
                  image: slide.images,fit: BoxFit.cover,),
              ),
              16.ph,
              BoldText(
                label:slide.title!,
                fontSize: 20,
              ),
              8.ph,
              MediumText(
                label:slide.description!,
                fontSize: 18,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
