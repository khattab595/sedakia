import 'package:app/core/components/base_stateless_widget.dart';

import '../../../../core/widgets/texts/texts.dart';
import '../../../main_index.dart';

class HajjTransportationItem extends BaseStatelessWidget {
  HajjTransportationItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: 5.paddingHoriz + 16.paddingTop,
          padding: 5.paddingAll,
          decoration: Decorations.kDecorationBorderRadius(
              radius: 10, color: kPrimaryLight, borderColor: kPrimaryLight),
          child: Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              10.pw,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    10.ph,
                    const PrimaryBoldText(
                      fontSize: 15,
                      label: "للتنقل من المدينة لمكة",
                    ),
                    4.ph,
                    const MediumText(
                      label:
                          'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ',
                      fontSize: 12,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
