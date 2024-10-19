
import '../../../../core/widgets/texts/primary_texts.dart';
import '../../../main_index.dart';

class CustomerItem extends BaseStatelessWidget {
   CustomerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(

      width: double.infinity,
       decoration: Decorations.shapeDecorationShadow(),
      padding: 16.paddingAll,
      margin: 20.paddingHoriz+10.paddingBottom,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PrimaryMediumText(label: "ماهيتاب عادل",fontSize: 16,),
          7.ph,
          PrimaryRegularText(label: "01120484981",fontSize: 12
            ,),
          5.ph,
          PrimaryRegularText(label: "mahytabadel25@gmail.com",fontSize:12,),


        ],
      ),
    );;
  }
}
