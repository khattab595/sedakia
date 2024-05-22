import 'package:app/core/utils/navigator.dart';
import 'package:app/core/widgets/texts/primary_texts.dart';

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
          SemiBoldPrimaryText(label:  strings.current_project,fontSize: 19,),
          10.ph,
          ProjectItem(),
          10.ph,
          SemiBoldPrimaryText(label:  strings.past_project,fontSize: 19,),
          Expanded(
              child: ListView.builder(
            itemCount: 10,
            padding: 10.paddingTop,

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
            SemiBoldPrimaryText(label: "محمد القحطاني",fontSize: 21,),
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
         const Spacer(),
        InkWell(
            onTap: (){
              pushNamed(Routes.notifications);
            },
            child: const AppIcon(icon: AppIcons.notification)),
        10.pw,
        const AppIcon(icon: AppIcons.avatar),
      ],
    );
  }
}
