import 'package:app/core/utils/helper_methods.dart';
import 'package:app/src/main_index.dart';

import '../../../../core/utils/date_formatter.dart';
import '../../../../core/widgets/texts/primary_texts.dart';

class ItemTimerWidget extends BaseStatelessWidget {

 final String time;
 final String value;


  ItemTimerWidget({super.key,required  this.time,required  this.value,});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: double.infinity,
          padding: 12.paddingVert,
          decoration:
          Decorations.kDecorationTopRadius(radius: 8, color: Colors.grey.withOpacity(0.1)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.alarm,size: 14,color: primaryColor),
              4.pw,
              PrimaryMediumText(
                label: time,
                fontSize: 11,
              )
            ],
          ),
        ),
        Container(
          width: double.infinity,
          padding: 12.paddingVert,
          decoration: Decorations.kDecorationBottomRadius(
              radius: 8, color: primaryColor),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: PrimaryMediumText(
                  label:value ,
                  fontSize: 11,
                  maxLines: 2,
                  labelColor: AppColors.backgroundColor,

                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
