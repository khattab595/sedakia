import '../../../main_index.dart';
import '../../../request_log/domain/entities/course.dart';
import '../widgets/project_item.dart';

class HomeScreen extends BaseStatelessWidget {
  // final StreamStateInitial<Course?> currentProjectStream;
  // final StreamStateInitial<List<Course>?> projectsStream;
  //
  // HomeScreen({
  //   super.key,
  //   required this.currentProjectStream,
  //   required this.projectsStream,
  // });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: 15.paddingAll + 20.paddingTop,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          headerHome(),
          15.ph,
          Text(
            strings.current_project,
            style: primarySemiBoldStyle.copyWith(
                fontSize: 20, fontWeight: FontWeight.w600),
          ),
          10.ph,
          ProjectItem(),
          10.ph,
          Text(
            strings.past_project,
            style: primarySemiBoldStyle.copyWith(
                fontSize: 20, fontWeight: FontWeight.w600),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: 10,
            padding: 5.paddingTop,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return ProjectItem();
            },
          ))
        ],
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
            Text(
              "محمدالقحطاني علي",
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: primarySemiBoldStyle.copyWith(fontSize: 22),
            ),
            5.ph,
            Container(
              decoration: Decorations.baseDecorationRadius(
                  color: const Color(0xffE7FFEE), radius: 6),
              padding: 8.paddingAll,
              child: Text(
                strings.active,
                style: primaryRegularStyle.copyWith(fontSize: 15),
              ),
            )
          ],
        ),
         Spacer(),
        const AppIcon(icon: AppIcons.notification),
        10.pw,
        const AppIcon(icon: AppIcons.avatar),
      ],
    );
  }
}
