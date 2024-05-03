

import 'package:app/core/widgets/images/image_network.dart';

import '../../../../core/widgets/texts/texts.dart';
import '../../../main_index.dart';
import '../../domain/entities/profile.dart';
import 'edit_profile_image.dart';

class ProfileHeaderWidget extends BaseStatelessWidget {
  final Profile profile;
   ProfileHeaderWidget({super.key, required this.profile});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        EditProfileImage(
          image: profile.image ?? '',
          onSelectImage: (file) {},
        ),
        15.ph,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BoldText(
              label: profile.name ?? '',
            ),
            5.ph,
            RegularHintText(
              label: profile.email ?? '',
            ),
          ],
        ),
      ],
    );
  }
}
