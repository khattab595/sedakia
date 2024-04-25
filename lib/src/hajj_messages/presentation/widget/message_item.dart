import 'package:app/core/components/base_stateless_widget.dart';
import 'package:app/core/widgets/texts/custom_rich_text.dart';

import '../../../../core/widgets/texts/row_texts.dart';
import '../../../../core/widgets/texts/texts.dart';
import '../../../main_index.dart';

class MessageItem extends BaseStatelessWidget {
  MessageItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: 5.paddingAll,
          margin: 2.paddingHoriz+8.paddingVert,
          decoration: Decorations.kDecorationTopRadius(radius: 9,color: kBlueF6),
          child: Row(
            children: [
              10.pw,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    4.ph,
                    Row(
                      children: [
                        CustomRichText(
                          label: "رسالة من :",
                          value: "الحاج محمد",
                          labelStyle: bodyLarge.copyWith(
                              fontSize: 12, color: primaryColor),
                          valueStyle: bodyLarge.copyWith(
                              fontSize: 12, color: kPrimaryDark),
                        ),
                        const Spacer(),
                        const MediumText(
                          label: "2023-05-28",
                          fontSize: 12,
                        ),
                      ],
                    ),
                    2.ph,
                    SizedBox(
                      width: MediaQuery.of(context).size.width *0.60,
                      child: const Expanded(
                        child:  MediumText(
                          label:
                              'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل ',
                          fontSize: 12,
                        ),
                      ),
                    ),
                    6.ph,
                    const Divider(endIndent: 8,color: kBlue9D,),
                    6.ph,
                    RowTexts(
                      title: "تسكين",
                      value: "في انتظار الرد",
                      titleStyle: bodyMedium.copyWith(fontSize: 12,),
                      valueStyle:
                          bodyLarge.copyWith(fontSize: 12, color: kBlue8D),
                    )
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
