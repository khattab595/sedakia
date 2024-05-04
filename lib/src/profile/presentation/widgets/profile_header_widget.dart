
import 'dart:io';

import '../../../../core/widgets/texts/texts.dart';
import '../../../main_index.dart';
import '../../domain/entities/profile.dart';
import 'edit_profile_image.dart';

class ProfileHeaderWidget extends BaseStatelessWidget {
  final Profile profile;
  final Function(File) onSelectImage;
   ProfileHeaderWidget({super.key, required this.profile, required this.onSelectImage});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        EditProfileImage(
          image: profile.image ?? '',
          onSelectImage: onSelectImage,
        ),
        15.ph,
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BoldText(
              label: profile.name ?? '',
            ),
            5.ph,
            RegularHintText(
              label: profile.specialCode ?? '',
            ),
          ],
        ),
      ],
    );
  }
}
