import 'package:app/core/exceptions/extensions.dart';
import 'package:app/core/utils/navigator.dart';
import 'package:app/core/widgets/buttons/label_button.dart';
import 'package:app/core/widgets/texts/hint_texts.dart';
import 'package:flutter/material.dart';

import '../../../core/components/base_stateless_widget.dart';
import '../../../core/routes/routes.dart';
import '../../../core/utils/helper_methods.dart';
import '../../../core/widgets/texts/black_texts.dart';
import '../../../core/widgets/texts/texts.dart';

class OnboardingItem extends BaseStatelessWidget {
  final OnboardingModel item;

  OnboardingItem({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        (kToolbarHeight ).ph,
        Align(
          alignment: AlignmentDirectional.topStart,
          child: LabelButton(
            title: context.strings.skip,
            style: hintBoldStyle.copyWith(fontSize: 18),
            onTap: () async {
              pushNamedAndRemoveUntil(Routes.intro);
              await HelperMethods.setFirstTime();
            },
          ),
        ),
        50.ph,
        Image.asset(
          item.image,
          height: 250,
        ),
        20.ph,
        Padding(
          padding: 10.paddingVert,
          child: BlackBoldText(
            label: item.title,
          ),
        ),
        HintMediumText(
          label: item.description,
          fontSize: 14,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class OnboardingModel {
  String title;
  String description;
  String image;
  bool? isImageStart;

  OnboardingModel(
      {required this.title,
      required this.description,
      required this.image,
      this.isImageStart});
}
