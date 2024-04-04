
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:app/src/profile/domain/entities/profile.dart';

import '../../../main_index.dart';

class ProfileWidget extends BaseStatelessWidget {
  final Profile profile;
  final bool isCaptain;
  ProfileWidget({Key? key, required this.profile, required this.isCaptain}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, Routes.profile);
      },
      child: Container(
        padding:
        const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: BoxDecoration(
          color: AppColors.appBackgroundColorLightBlack,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: AppColors.appBackgroundColor.withOpacity(0.15),
              offset: const Offset(0, 2.5),
            ),
          ],
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: CircleAvatar(
                minRadius: 30,
                backgroundColor: AppColors.appIconGreyColor,
                child: SvgPicture.asset(AppIcons.profile,
                    height: 40, width: 40),
              ),
            ),
            // Column(
            //   mainAxisAlignment: MainAxisAlignment.start,
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     Text(
            // profile.name,
            //       style: theme.textTheme.headlineMedium!
            //           .copyWith(color: theme.cardColor),
            //     ),
            //     (isCaptain)
            //         ? RatingBarIndicator(
            //       rating: profile.rating,
            //       itemBuilder: (context, index) => AppIcon(
            //         icon: AppIcons.star,
            //         color: theme.iconTheme.color,
            //       ),
            //       itemCount: 5,
            //       itemSize: 15,
            //       unratedColor:  kYellowColor.withOpacity(0.2),
            //     )
            //         : Text(
            //       profile.companyName,
            //       style: TextStyle(
            //         color: AppColors.appTextSecondColor,
            //         fontSize: AppFonts.myP2,
            //         fontWeight: FontWeight.w400,
            //         fontFamily: AppFonts.appFontFamily,
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
