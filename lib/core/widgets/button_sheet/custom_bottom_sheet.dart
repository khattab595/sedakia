import 'package:app/core/utils/navigator.dart';
import 'package:app/core/widgets/buttons/label_button.dart';
import 'package:app/src/main_index.dart';
import '../text-field/custom_text_field.dart';
import '../texts/black_texts.dart';

class CustomBottomSheet extends BaseStatelessWidget {
   CustomBottomSheet({super.key,required this.onPressed,required this.onContactUs,required this.formKeyButtonSheet, required this.buttonSheetController, });
   final GlobalKey<FormState> formKeyButtonSheet;
   final TextEditingController buttonSheetController;
   final Function()? onPressed;
   final VoidCallback onContactUs;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:Decorations.decorationStartEndBorder(topStart: 12,topEnd: 12,color: Colors.white),
      height:MediaQuery.of(context).viewInsets.bottom +
      MediaQuery.of(context).size.height*0.5,
      width: double.infinity,
      child: Padding(
        padding: 16.paddingHoriz+25.paddingTop,
        child: SingleChildScrollView(
          child: Form(
            key: formKeyButtonSheet,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children:[
                10.ph,
                BlackSemiBoldText(
                  label:strings.do_subscription,
                  fontSize: 20,
                  labelColor: context.hintColor,
                ),
                BlackSemiBoldText(
                  label:strings.subscription_mes,
                  fontSize: 14,
                  labelColor: context.hintColor,
                ),
                24.ph,
                CustomTextField(
                  // minHeight:54,
                  controller: buttonSheetController,
                  hintText: strings.sub_code,
                  // keyboardType: TextInputType.n,
                ),
                8.ph,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BlackSemiBoldText(
                      label:strings.has_not_code,
                      fontSize: 14,
                      labelColor: context.hintColor,
                    ),
                    2.pw,
                    LabelButton(
                      title: strings.contact_us,
                      fontSize: 14,
                      style: primaryMediumStyle,
                      onTap: (){
                        onContactUs();
                      },
                    ),
                  ],
                ),
                32.ph,
                PrimaryButton(
                  height: 54,
                  title: strings.subscription,
                  onPressed: onPressed
                ),
                10.ph,
                PrimaryButton(
                  height: 54,
                  backgroundColor: const Color(0xffDCDCDC),
                  style: const TextStyle(
                    color: Colors.grey
                  ),
                  title: strings.cancel,
                  onPressed: (){
                    pop();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}