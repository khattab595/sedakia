import 'package:app/core/utils/navigator.dart';
import 'package:app/core/widgets/texts/primary_texts.dart';

import '../../../main_index.dart';
import '../../data/models/home_data_dto.dart';
import '../../domain/entities/home_data.dart';
import '../widgets/attachment_item.dart';
import '../widgets/project_item.dart';
import '../widgets/sliders_home.dart';

class HomeScreen extends BaseStatelessWidget {
  final HomeData homeData;
  final Function(String)? onDownload;

  HomeScreen({
    super.key,
    required this.homeData,
    this.onDownload,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: 15.paddingAll + 30.paddingTop,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            headerHome(),
            30.ph,
            SlidersHome(
              sliders: homeData.sliders ?? [],
            ),
            20.ph,
            SemiBoldPrimaryText(
              label: strings.current_project,
              fontSize: 19,
            ),
            10.ph,
            ProjectItem(
              project: homeData.currentProject ?? CurrentProjectDto(),
            ),
            20.ph,
            SemiBoldPrimaryText(
              label: strings.models,
              fontSize: 19,
            ),
            10.ph,
            AttachmentList(
              models: homeData.models ?? [],
              onDownload: onDownload,
            ),
          ],
        ),
      ),
    );
  }

  headerHome() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SemiBoldPrimaryText(
              label: homeData.employeeName ?? "",
              fontSize: 21,
            ),
            Container(
              decoration: Decorations.baseDecorationRadius(
                  color: const Color(0xffE7FFEE), radius: 6),
              padding: 5.paddingHoriz + 2.paddingVert,
              margin: 10.paddingTop,
              child: Text(
                homeData.employeeStatus ?? "",
                style: primaryRegularStyle.copyWith(fontSize: 15),
              ),
            )
          ],
        ),
        const Spacer(),
        InkWell(
            onTap: () {
              pushNamed(Routes.notifications);
            },
            child: const AppIcon(
              icon: AppIcons.notification,
              size: 32,
            )),
        10.pw,
        InkWell(
            onTap: () {
              pushNamed(Routes.profile);
            },
            child: const AppIcon(
              icon: AppIcons.avatar,
              size: 40,
            )),
      ],
    );
  }
}
