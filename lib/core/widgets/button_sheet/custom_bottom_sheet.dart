import 'package:app/core/decorations/decorations.dart';
import 'package:app/core/exceptions/extensions.dart';
import 'package:flutter/material.dart';

import '../../components/base_stateless_widget.dart';
import '../buttons/primary_button.dart';
import '../text-field/custom_text_field.dart';
import '../texts/texts.dart';

class CustomBottomSheet extends BaseStatelessWidget {
   CustomBottomSheet({super.key,});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:Decorations.decorationStartEndBorder(topStart: 12,topEnd: 12,color: Colors.white),
      height:MediaQuery.of(context).viewInsets.bottom +
      MediaQuery.of(context).size.height*0.5,
      width: double.infinity,
      child: Padding(
        padding: 16.paddingHoriz+25.paddingVert,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children:[
              10.ph,
              BoldText(
                label:strings.do_subscription,
                fontSize: 20,
                labelColor: context.hintColor,
              ),
              SemiBoldText(
                label:strings.subscription_mes,
                fontSize: 14,
                labelColor: context.hintColor,
              ),
              24.ph,
              CustomTextField(
                controller: TextEditingController(),
                hintText: strings.sub_code,
                keyboardType: TextInputType.number,
                margin: 7.paddingBottom,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SemiBoldText(
                    label:strings.has_not_code,
                    fontSize: 14,
                    labelColor: context.hintColor,
                  ),
                  2.pw,
                  SemiBoldText(
                    label:strings.contact_us,
                    fontSize: 14,
                    labelColor: context.primaryColor,
                  ),
                ],
              ),
              32.ph,
              PrimaryButton(
                title: strings.subscription,
                onPressed: (){
                },
              ),
              10.ph,
              PrimaryButton(
                backgroundColor: const Color(0xffDCDCDC),
                style: const TextStyle(
                  color: Colors.grey
                ),
                title: strings.cancel,
                onPressed: (){
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}