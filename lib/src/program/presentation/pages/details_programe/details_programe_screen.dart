import 'package:app/core/components/base_stateless_widget.dart';

import '../../../../../core/widgets/shapes/rounded_shape.dart';
import '../../../../../core/widgets/texts/texts.dart';
import '../../../../main_index.dart';

class DetailsProgremeScreen extends BaseStatelessWidget {
  DetailsProgremeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: 16.paddingHoriz + 24.paddingTop,
            height: 345,
            decoration: Decorations.kDecorationRadiusAndImage(
                image: AppImages.images, radius: 24),
          ),
          9.ph,
          Padding(
            padding: 25.paddingHoriz,
            child: const Expanded(
              child: MediumText(
                label:
                    'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وب',
                fontSize: 14,
              ),
            ),
          ),
          9.ph,
          PrimaryButton(
            title: strings.campaign_programmes,
            onPressed: () {},
            margin: 16.paddingHoriz,
            height: 50,
          )
        ],
      ),
    );
  }
}
