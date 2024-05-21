import '../../../main_index.dart';
import '../../../request_log/domain/entities/course.dart';

class ProjectItem extends BaseStatelessWidget {
  // final StreamStateInitial<Course?> currentProjectStream;
  //
  // ProjectItem({
  //   super.key,
  //   required this.currentProjectStream,
  // });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: Decorations.kDecorationBorderRadius(),
      width: context.width,
      padding: 10.paddingAll,
      margin: 10.paddingBottom,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "مشروع تضاريس نجد",
            style: primaryMediumStyle.copyWith(
              fontSize: 20,
            ),
          ),
          7.ph,
          Row(
            children: [
              const Icon(
                Icons.location_on_outlined,
                color: AppColors.blueColorff,
                size: 17,
              ),
              10.pw,
              SizedBox(
                height: 40,
                width: context.width - 80,
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "شارع حمد الجاسر، حي الروضة، جدة ",
                        style: primaryRegularStyle.copyWith(
                            fontSize: 14, color: AppColors.blueColorff),
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.greyColorB1,
                      size: 16,
                    )
                  ],
                ),
              ),
            ],
          ),
          7.ph,
          Row(
            children: [
              const AppIcon(
                icon: AppIcons.calendar,
                size: 16,
              ),
              10.pw,
              Text(
                "22 أبريل 2024",
                style: primaryRegularStyle.copyWith(
                    fontSize: 12, color: AppColors.greyColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
