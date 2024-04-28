import 'package:app/src/main_index.dart';

import '../../../../core/utils/navigator.dart';
import '../../../../core/widgets/shapes/rounded_shape.dart';
import '../../../../core/widgets/texts/texts.dart';
import '../../data/models/home_dto.dart';

class HomeButtons extends BaseStatelessWidget {
  final List<Statistic> statistics;

  HomeButtons({super.key, required this.statistics});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          _Item(
            icon: AppImages.caf,
            sizeIcon: 70,
            title: strings.about_elcaf,
            onTap: () {
              Navigators.pushNamed(Routes.aboutCafPage);
            },
          ),
          _Item(
            sizeIcon: 60,
            icon: AppIcons.programs,
            title: strings.programs,
            onTap: () {
              Navigators.pushNamed(Routes.programmePage);
            },
          ),
        ]),
        22.ph,
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          _Item(
            icon: AppIcons.conditions,
            title: strings.campaign_terms,
            sizeIcon: 53,
            onTap: () {
              Navigators.pushNamed(Routes.campaignTermsPage);
            },
          ),
          _Item(
            icon: AppIcons.contacts,
            title: strings.call_us,
            sizeIcon: 44,
            onTap: () {
              Navigators.pushNamed(Routes.invoicesPage);
            },
          ),
        ]),
        22.ph,
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          _Item(
            icon: AppIcons.location,
            title: strings.our_location_is_in_feelings,
            sizeIcon: 55,
            onTap: () {
             // Navigators.pushNamed(Routes.regiserQaydPage);
            },
          ),
          _Item(
            icon: AppIcons.points,
            title: strings.assembly_points,
            sizeIcon: 55,
            onTap: () {
              Navigators.pushNamed(Routes.invoicesPage);
            },
          ),
        ]),
        22.ph,
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          _Item(
            icon: AppIcons.transport,
            title: strings.hajj_transportation,
            sizeIcon: 50,
            onTap: () {
              Navigators.pushNamed(Routes.hajjTransportationPage);
            },
          ),
          _Item(
            icon: AppIcons.reference,
            title: strings.references_of_interest_to_you,
            sizeIcon: 52,
            onTap: () {
              Navigators.pushNamed(Routes.referencePage);
            },
          ),
        ]),
        22.ph,
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          _Item(
            icon: AppIcons.images,
            title: strings.photo_gallery,
            sizeIcon: 55,
            onTap: () {
              Navigators.pushNamed(Routes.photoGalleryPage);
            },
          ),
          _Item(
            icon: AppIcons.live,
            sizeIcon: 57,
            title: strings.live_broadcast,
            onTap: () {
              Navigators.pushNamed(Routes.liveBroadcastPage);
            },
          ),
        ]),
        22.ph,
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          _Item(
            icon: AppIcons.healthy,
            title: strings.your_health_during_hajj,
            sizeIcon: 61,
            onTap: () {
              Navigators.pushNamed(Routes.healthyPage);
            },
          ),
          _Item(
            icon: AppIcons.rosary,
            sizeIcon: 51,
            title: strings.electronic_rosary,
            onTap: () {
              Navigators.pushNamed(Routes.rosaryPage);
            },
          ),
        ]),
        100.ph,
      ],
    );
  }
}

class _Item extends BaseStatelessWidget {
  final String icon;
  final String title;
  final Function()? onTap;
  final double? sizeIcon;

  _Item({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
    this.sizeIcon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ContainerShapeShadow(
        height: 109,
        width: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppIcon(
              icon: icon,
              size: sizeIcon ?? 40,
              color: primaryColor,
            ),
            BoldText(
              fontSize: 12,
              textAlign: TextAlign.center,
              label: title,
            ),
          ],
        ),
      ),
    );
  }
}
