import 'dart:io';

import 'package:app/core/widgets/texts/primary_texts.dart';

import '../../../../core/widgets/texts/black_texts.dart';
import '../../../main_index.dart';
import '../../domain/entities/profile.dart';
import 'edit_profile_image.dart';

class ProfileHeaderWidget extends BaseStatelessWidget {
  final Profile profile;
  final Function(File) onSelectImage;

  ProfileHeaderWidget(
      {super.key, required this.profile, required this.onSelectImage});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 180,
          color: Colors.white,
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 135,
            padding: 10.paddingAll,
            decoration:
                Decorations.baseDecorationRadius(color: AppColors.primaryLight),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                30.ph,
                PrimaryMediumText(
                  label: profile.fullName(),
                  fontSize: 20,
                  labelColor: cardColor,
                ),
                5.ph,
                Text(
                  profile.job?.name ?? "",
                  style: whiteRegularStyle.copyWith(fontSize: 14),
                ),
                5.ph,
                Text(
                  "${strings.code} #${profile.code ?? ""}",
                  style: whiteRegularStyle.copyWith(fontSize: 10),
                ),
              ],
            ),
          ),
        ),
        PositionedDirectional(
            top: 0,
            start: 30,
            child: Container(
                height: 80,
                width: 80,
                decoration: const BoxDecoration(shape: BoxShape.circle),
                child: const CircleAvatar(
                  radius: 35,
                  backgroundColor: AppColors.greyColorB1,
                  child: AppIcon(
                      icon: AppIcons.profile, color: Colors.white, size: 40),
                ))),
      ],
    );
  }
}
