import '../../../../core/components/base_stateless_widget.dart';
import '../../../../core/widgets/button_sheet/custom_bottom_sheet.dart';
import '../../../../core/widgets/texts/texts.dart';
import '../../../home/presentation/widgets/personal_informatin_widget.dart';
import '../../../main_index.dart';

class CustomDetailsWidget extends BaseStatelessWidget {
   CustomDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          10.ph,
           SemiBoldText(
            label:strings.description,
            fontSize: 16,
          ),
          8.ph,
          MediumText(
            label:'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.',
            fontSize: 18,
            labelColor: context.hintColor,
          ),
          16.ph,
           SemiBoldText(
            label:strings.provider,
            fontSize: 16,
          ),
          10.ph,
          PersonalInformationWidget(),
          47.ph,
          PrimaryButton(
            title: strings.subscription,
            onPressed: (){
              showModalBottomSheet(
                backgroundColor:Colors.white,
                context: context,
                isScrollControlled: true,
                builder: (context) =>   CustomBottomSheet(),
              );

            },
          ),
          25.ph,

        ],
      ),
    );
  }
}
