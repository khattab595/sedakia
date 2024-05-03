import 'package:app/core/utils/navigator.dart';

import '../../../../core/components/base_stateless_widget.dart';
import '../../../../core/widgets/images/image_network.dart';
import '../../../../core/widgets/texts/texts.dart';
import '../../../main_index.dart';
import '../../domain/entities/teacher.dart';

class CustomTeacherItem extends BaseStatelessWidget {
  final Teacher teacher;
  final double? height;
  final double? width;
   CustomTeacherItem( {super.key,this.height, this.width, required this.teacher});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        pushNamed(Routes.teacherDetailsPage,arguments: teacher.id);
      },
      child: Stack(
        children: [
          SizedBox(
              height:height??130,
              width:width?? 104,
              child: ImageNetwork(image: teacher.image!,radius: 12,fit: BoxFit.cover,)),
            Container(
              height:height??130,
              width:width?? 104,
             decoration: BoxDecoration(
               borderRadius: const BorderRadius.all(Radius.circular(12)),
               gradient: LinearGradient(
                 begin: Alignment.bottomCenter,
                 end: Alignment.center,
                 colors: [
                   context.primaryColorDark.withOpacity(0.75),
                   context.primaryColorDark.withOpacity(0.4),
                   context.primaryColorDark.withOpacity(0.1),
                 ]
               )
             ),
            ),
           Positioned(
              bottom: 4,
              right: 12,
              child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                SemiBoldText(
                  label:teacher.name!,
                  fontSize: 10,
                  labelColor: Colors.white,
                ),
                MediumText(
                  label:teacher.department!,
                  fontSize: 8,
                  labelColor: Colors.white,
                ),
              ],))

        ],
      ),
    );
  }
   String courseImageTest2='https://internationalteacherstraining.com/blog/wp-content/uploads/2018/08/171219-teacher-stock.jpg';

}
