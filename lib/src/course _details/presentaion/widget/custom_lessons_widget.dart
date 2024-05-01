import '../../../../core/components/base_stateless_widget.dart';
import '../../../../core/widgets/button_sheet/custom_bottom_sheet.dart';
import '../../../../core/widgets/images/flip_asset_image.dart';
import '../../../../core/widgets/texts/texts.dart';
import '../../../main_index.dart';
import 'custom_lesson_item.dart';

class CustomLessonsWidget extends BaseStatelessWidget {
  CustomLessonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: 10.paddingHoriz+16.paddingVert,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
           ...items.map((e) => CustomLessonItem()),
            30.ph,
            PrimaryButton(
              title: strings.subscription,
              onPressed: (){
                showModalBottomSheet(
                  backgroundColor:Colors.white,
                  context: context,
                  isScrollControlled: true,
                  builder: (context) =>   CustomBottomSheet(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
  List items=[1,2,3,4];
}
