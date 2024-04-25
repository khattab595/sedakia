import 'package:app/core/components/base_stateless_widget.dart';

import '../../../../core/widgets/shapes/rounded_shape.dart';
import '../../../../core/widgets/texts/texts.dart';
import '../../../main_index.dart';

class CampaignTermsScreen extends BaseStatelessWidget {
  CampaignTermsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kCafColor.withOpacity(0.1),
      child: Column(
        children: [
          13.ph,
          Padding(
            padding: 10.paddingHoriz,
            child: ContainerShapeShadow(
                padding: 13.paddingAll,
                radius: 10,
                child: ListView.builder(
                    itemCount: 4,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: 28.paddingBottom,
                        child: const MediumText(
                            fontSize: 14,
                            label:
                                "لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم "),
                      );
                    })),
          )
        ],
      ),
    );
  }
}
