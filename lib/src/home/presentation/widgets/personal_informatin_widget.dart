import 'package:app/core/utils/helper_methods.dart';
import 'package:app/core/widgets/images/image_network.dart';

import '../../../../core/widgets/texts/texts.dart';
import '../../../main_index.dart';

class PersonalInformationWidget extends BaseStatelessWidget {
  PersonalInformationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: HelperMethods.getProfile(),
      builder: (context, snapshot) {
        return Padding(
          padding: 10.paddingAll,
          child: Row(
            children: [
              ImageNetworkCircle(
                image: snapshot.data?.image ?? '',
                size: 60,
              ),
              10.pw,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MediumText(
                    label: strings.welcome_message,
                    fontSize: 14,
                  ),
                  SemiBoldText(
                    label: snapshot.data?.name ?? '',
                    fontSize: 17,
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
