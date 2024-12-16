import 'package:app/src/main_index.dart';

import '../../../../../core/widgets/texts/primary_texts.dart';
import '../../../domain/entities/Setting_model.dart';

class PrivacyPolicyScreen extends BaseStatelessWidget {
  PrivacyPolicyScreen({super.key, required this.data});
final SettingModel data;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: 20.paddingHoriz,
      child: Container(
        width: double.infinity,
        decoration: Decorations.kDecorationBorderRadius(
            radius: 30, borderColor: AppColors.borderColor.withOpacity(0.3)),
        padding: 25.paddingAll,
        child: PrimaryRegularText(
          labelStyle: primaryRegularStyle.copyWith(height: 1.4),
          label: data.privacy??"",
          fontSize: 12,
        ),
      ),
    );
  }
}
