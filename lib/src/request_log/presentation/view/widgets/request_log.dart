
import 'package:app/core/widgets/texts/hint_texts.dart';
import 'package:app/core/widgets/texts/primary_texts.dart';
import 'package:app/core/widgets/texts/row_texts.dart';
import '../../../../../core/widgets/texts/black_texts.dart';
import '../../../../main_index.dart';

class RequestLogItem extends BaseStatelessWidget {
  //final Course log;
  int id ;
  int tabIndex ;
  RequestLogItem({
    super.key,
   required this.id,
    required this.tabIndex,
    //  required this.log
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: 15.paddingAll,
      margin: 20.paddingHoriz + 10.paddingBottom,
      decoration: Decorations.kDecorationBorderRadius(
        radius: 10,
        borderColor: dividerColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              AppIconButton(
                  onPressed: (){
                    showModalBottomSheet(context: context,
                        isScrollControlled: true,
                        builder: (context) => Container(
                      color: Colors.white,
                      height: context.height,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 50),
                            child: Image.asset(
                             "assets/images/test.jpg",
                              // width: context.width,
                            ),
                          ),
                         PrimaryButton(
                           onPressed: (){
                             Navigator.pop(context);
                           },
                           margin: const EdgeInsets.symmetric(horizontal:  20, vertical: 20),
                           title: strings.close,
                          ),
                        ],
                      ),
                    ));
                  },
                  icon: AppIcons.desc,size: 25),
              5.pw,
              Container(
                decoration: Decorations.kDecorationBorderRadius(
                    radius: 5,
                    color: orangeLight,
                    borderColor: orangeLight),
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                child: Center(
                  child: PrimaryRegularText(
                    label: "إجازة",
                    fontSize: 12,
                    labelStyle: primaryMediumStyle.copyWith(
                        fontSize: 14, color: orangeColor),
                  ),
                ),
              ),
              const Spacer(),
              BlackMediumText(
                // generated code that contains 6 number
                label: '#${id+100000}',
                fontSize: 16,
              ),
            ],
          ),
          9.ph,
          Row(
            children: [
              HintRegularText(label: "${strings.description} : ", fontSize: 14),
              5.pw,
              HintRegularText(
                label: "كان لدي موعد مع الطبيب",
              ),
            ],
          ),
          10.ph,
          RowTexts(
            title: strings.order_history,
            value: "25 Apr 2024",
            titleStyle: primaryMediumStyle.copyWith(fontSize: 14),
            valueStyle: primaryRegularStyle.copyWith(
                color: greyColorB1, fontSize: 12),
          ),
          5.ph,
           (id == 0)? 0.pw:
          RowTexts(
            title: strings.reply_date,
            value: "25 Apr 2024",
            titleStyle: primaryMediumStyle.copyWith(fontSize: 14),
            valueStyle: primaryRegularStyle.copyWith(
                color:greyColorB1, fontSize: 12),
          ),
          5.ph,
            RowTexts(
              title: strings.leave_start_date,
              value: "25 Apr 2024",
              titleStyle: primaryMediumStyle.copyWith(fontSize: 14),
              valueStyle: primaryRegularStyle.copyWith(
                  color: greyColorB1, fontSize: 12),
            ),
          5.ph,
          RowTexts(
            title: strings.leave_end_date,
            value: "25 Apr 2024",
            titleStyle: primaryMediumStyle.copyWith(fontSize: 14),
            valueStyle: primaryRegularStyle.copyWith(
                color: greyColorB1, fontSize: 12),
          ),
          5.ph,
          if(id == 1)
            RowTexts(
              title: "سبب الرفض",
              value: "لم يتم رفع المرفقات",
              titleStyle: primaryMediumStyle.copyWith(fontSize: 14),
              valueStyle: primaryRegularStyle.copyWith(
                  color: errorColor, fontSize: 12),
            ),
        ],
      ),
    );
  }
}
