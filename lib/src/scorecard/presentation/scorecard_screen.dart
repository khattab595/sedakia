import 'package:app/src/scorecard/presentation/widget/custom_scorecard_item.dart';
import '../../main_index.dart';

class ScoreCardScreen extends BaseStatelessWidget {

  ScoreCardScreen({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: 16.paddingHoriz,
      child: SingleChildScrollView(
        child: Column(
          children: [
            ...items.map((e) => CustomScoreCardItem(
                  title: 'الاختبار النهائي في كورس الكيمياء',
                  description:
                      'الدورة التاهيلية للكيمياء للصف الرابع العلمي   عبدالله مصطفي',
                  degree: '94',
                  onPressed: () {},
                ))
          ],
        ),
      ),
    ));
  }

  List items = [1, 2, 3, 4, 5];
}
