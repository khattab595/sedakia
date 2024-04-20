

import 'package:app/core/widgets/images/image_network.dart';

import '../../../../core/widgets/texts/texts.dart';
import '../../../main_index.dart';
import '../../domain/entities/profile.dart';

class ProfileHeaderWidget extends BaseStatelessWidget {
  final Profile profile;
   ProfileHeaderWidget({super.key, required this.profile});

  @override
  Widget build(BuildContext context) {
    return  Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ImageNetworkCircle(
          image: profile.image,
          width: 70,
          height: 70,
        ),
        20.pw,
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
