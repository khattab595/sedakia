import 'package:app/core/components/base_stateless_widget.dart';

import '../../../../core/widgets/texts/row_texts.dart';
import '../../../../core/widgets/texts/texts.dart';
import '../../../main_index.dart';

class ProgrameItem extends BaseStatelessWidget {
   ProgrameItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
          margin: 5.paddingHoriz+16.paddingTop,
          padding: 5.paddingAll,
          decoration:Decorations.kDecorationBorderRadius(radius: 10,color: kPrimaryLight,borderColor: kPrimaryLight),
          child: Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Container(
               margin: 10.paddingVert+5.paddingStart,
             height: 76,
               width: 91,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(5),
                   image: const DecorationImage(
                     fit: BoxFit.cover,
                   image: AssetImage(AppImages.images)
                 )
               ),
             ),
              10.pw,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     const Row(
                      children: [
                        Expanded(
                          child: PrimaryBoldText(
                            fontSize: 15,
                            label: "اسم البرنامج",
                          ),
                        ),
                      ],
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
