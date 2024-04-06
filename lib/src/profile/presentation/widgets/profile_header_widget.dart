

import 'package:app/core/widgets/images/image_network.dart';

import '../../../../core/utils/helper_methods.dart';
import '../../../../core/widgets/texts/texts.dart';
import '../../../main_index.dart';

class ProfileHeaderWidget extends BaseStatelessWidget {
   ProfileHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: HelperMethods.getProfile(),
        builder: (context, profile) {
          // print('profile.data?.image ${profile.data?.image}');
          return profile.connectionState == ConnectionState.waiting
              ? 0.ph
              :
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const ImageNetworkCircle(
                image: 'https://www.pngitem.com/pimgs/m/146-1468479_my-profile-icon-blank-profile-picture-circle-hd.png',
                width: 70,
                height: 70,
              ),
              20.pw,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BoldText(
                   label:'السعد',
                  ),
                  5.ph,
                  const RegularHintText(
                    label: '523152684',
                   ),
                ],
              ),
            ],
          );
        }
    );
  }
}
