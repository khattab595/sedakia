import '../../../../core/widgets/images/image_network.dart';
import '../../../../core/widgets/texts/texts.dart';
import '../../../main_index.dart';
import 'custom_teacher_item.dart';

class CustomTeachersWidget extends BaseStatelessWidget {
  CustomTeachersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...latestItems.map((e) =>
              Padding(
                padding: 10.paddingEnd,
                child:
                CustomTeacherItem()
              )
          ),
        ],
      ),
    );
  }
   List latestItems=[1,2,3,4,5,6,7,8];

}
