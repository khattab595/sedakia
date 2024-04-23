import 'package:app/core/components/base_stateless_widget.dart';
import 'package:app/core/widgets/texts/texts.dart';

import '../../../main_index.dart';

class AboutCafScreen extends BaseStatelessWidget {
  AboutCafScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kCafColor.withOpacity(0.1),
      child: Column(
        children: [
          24.ph,
          Container(
            margin: 8.paddingHoriz,
            height: 120,
            width: double.infinity,
            decoration: Decorations.kDecorationRadius(
                radius: 20, color: kPrimaryLight),
            child: Center(
                child: Image.asset(
              AppImages.caf,
              width: 106,
              height: 74,
            )),
          ),
          18.ph,
          Padding(
            padding: 10.paddingHoriz,
            child: const MediumText(
                fontSize: 14,
                label:
                    "لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائقليتراسيت (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل ألدوس بايج مايكر (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم."),
          )
        ],
      ),
    );
  }
}
