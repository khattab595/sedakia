import 'package:app/core/utils/helper_methods.dart';
import 'package:app/core/widgets/icons/icon_text.dart';

import '../../../main_index.dart';
import '../../domain/entities/social_media.dart';

class CommunityScreen extends BaseStatelessWidget {
  final List<SocialMedia> socialMedia;

  CommunityScreen({Key? key, required this.socialMedia}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      color: context.primaryColor,
      width: double.infinity,
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: 150.paddingBottom,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                socialMedia.length,
                (index) => GestureDetector(
                  onTap: () {
                    HelperMethods.launchURL(socialMedia[index].url ?? '');
                  },
                  child: IconText(
                    text: socialMedia[index].name ?? '',
                    icon: socialMedia[index].icon ?? '',
                    iconSize: 40,
                    textStyle: context.labelMedium.copyWith(fontSize: 14),
                    padding: 14.paddingBottom,
                  ),
                ),
              ),
            ),
          ),
          16.pw,
          Image.asset(AppImages.social_media, scale: 4),
        ],
      ),
    );
  }
}
