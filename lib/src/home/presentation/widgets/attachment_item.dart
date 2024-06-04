import 'package:app/core/components/base_stateless_widget.dart';

import '../../../../core/widgets/texts/primary_texts.dart';
import '../../../main_index.dart';

class AttachmentItem extends BaseStatelessWidget {
   AttachmentItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        attachment(text:strings.holiday),
        attachment(text:strings.advance_payment),
        attachment(text:strings.resignation),
      ],
    );
  }
   Widget attachment ({required String text}){
     return  Container(
       margin: 5.paddingHoriz,
       padding: 12.paddingAll,
       width: 100,
       decoration: Decorations.kDecorationBorderRadius(borderColor: dividerColor),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           SemiBoldPrimaryText(label: text,fontSize: 18,),
           10.ph,
           const Icon(Icons.download_rounded,size: 30,)
         ],
       ),
     );
   }
}
