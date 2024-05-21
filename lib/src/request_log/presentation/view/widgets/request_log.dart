import 'package:app/core/widgets/texts/primary_texts.dart';
import 'package:app/core/widgets/texts/row_texts.dart';
import 'package:app/src/request_log/presentation/view/widgets/row_icon_text.dart';

import '../../../../main_index.dart';
import '../../../domain/entities/course.dart';

class RequestLogItem extends BaseStatelessWidget {
  //final Course log;
  RequestLogItem({
    super.key,
    //  required this.log
  });

  @override
  Widget build(BuildContext context) {
    // print('myCourse.percentage: ${log.percentage}');
    return Container(
     padding: 15.paddingAll,
      margin: 20.paddingHoriz + 10.paddingTop,
      decoration: Decorations.kDecorationBorderRadius(
        radius: 10,
        borderColor:dividerColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          RomIconAndText(),
          3.ph,
          PrimaryRegularText(label:"كان لدي موعد مع الطبيب",labelColor: Color(0xffB1B1B1),),
          10.ph,
          RowTexts(title: strings.order_history, value: "25 Apr 2024",titleStyle: primaryMediumStyle.copyWith(fontSize: 16 ),valueStyle: primaryRegularStyle.copyWith(color:Color(0xffB1B1B1),fontSize: 14 ),),
          5.ph,
          RowTexts(title: strings.reply_date, value: "25 Apr 2024",titleStyle: primaryMediumStyle.copyWith(fontSize: 16 ),valueStyle: primaryRegularStyle.copyWith(color:Color(0xffB1B1B1),fontSize: 14 ),),
          5.ph,
          RowTexts(title: strings.starting_date, value: "25 Apr 2024",titleStyle: primaryMediumStyle.copyWith(fontSize: 16 ),valueStyle: primaryRegularStyle.copyWith(color:Color(0xffB1B1B1),fontSize: 14 ),),
          5.ph,
          RowTexts(title: strings.expiry_date, value: "25 Apr 2024",titleStyle: primaryMediumStyle.copyWith(fontSize: 16 ),valueStyle: primaryRegularStyle.copyWith(color:Color(0xffB1B1B1),fontSize: 14 ),),
        ],
      ),
    );
  }

}
