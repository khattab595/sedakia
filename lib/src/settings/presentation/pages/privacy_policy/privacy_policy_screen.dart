import 'package:app/src/main_index.dart';

import '../../../../../core/widgets/texts/primary_texts.dart';

class PrivacyPolicyScreen extends BaseStatelessWidget {
  PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: 20.paddingHoriz,
      child: Container(
        decoration: Decorations.kDecorationBorderRadius(
            radius: 30, borderColor: AppColors.borderColor.withOpacity(0.3)),
        padding: 25.paddingAll,
        child: PrimaryRegularText(
          labelStyle: primaryRegularStyle.copyWith(height: 1.4),
          label: strings.content_privacy,
          fontSize: 12,
        ),
      ),
    );
  }
}
