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
      padding: 15.paddingAll + 10.paddingTop,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          headerHome(),

          Text(
            "Current Project",
            style: primaryBoldStyle.copyWith(
                fontSize: 22, fontWeight: FontWeight.w600),
          ),
          10.ph,
          ProjectItem(),
          Text(
            "Past projects",
            style: primaryBoldStyle.copyWith(
                fontSize: 22, fontWeight: FontWeight.w600),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: 10,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return ProjectItem();
            },
          ))
        ],
      ),
    );
  }

  headerHome(){
    return  Row(
      children: [
        Column(
          children: [
            Text("Hi Mahytab",style: primarySemiBoldStyle.copyWith(fontSize: 25),)
          ],
        )
      ],
    );

  }
}
