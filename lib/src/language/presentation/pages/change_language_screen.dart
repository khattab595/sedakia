import 'package:app/core/components/base_stateless_widget.dart';
import 'package:app/core/widgets/buttons/outlined_button.dart';
import 'package:app/core/widgets/texts/texts.dart';

import '../../../../core/widgets/shapes/rounded_shape.dart';
import '../../../main_index.dart';

class ChangeLanguageScreen extends BaseStatelessWidget {
  ChangeLanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ContainerShapeShadow(
          padding: 23.paddingTop + 10.paddingHoriz,
          margin: 10.paddingHoriz + 32.paddingTop,
          child: Column(
            children: [
              const AppIcon(
                icon: AppIcons.language_icon,
                size: 93,
              ),
              29.ph,
              BoldText(
                label: strings.choose_the_application_language,
                fontSize: 18,
              ),
              46.ph,
              PrimaryButton(
                title: strings.english,
                onPressed: () {},
                radius: 6,
              ),
              9.ph,
              SecondaryButton(
                title: strings.arabic,
                fontSize: 18,
                onPressed: () {},
                radius: 6,
                borderColor: primaryColor,
              ),
              270.ph,
            ],
          ),
        )
      ],
    );
  }
}
